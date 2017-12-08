# -*- coding: utf-8 -*-
from django.shortcuts import render,get_object_or_404
from django.http import HttpResponse
from .models import *
from django.template import loader
from tarlaguard.tables import *
from .forms import *
from django.http import HttpResponseRedirect
from django.http import Http404
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django_tables2 import RequestConfig
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.db.models import F
from django.utils import timezone
from dateutil import parser
from datetime import datetime
import time
from django.db.models import Q
from collections import defaultdict
from graphos.sources.simple import SimpleDataSource
from graphos.renderers import gchart, yui, flot, morris, highcharts, c3js, matplotlib_renderer
import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from operator import itemgetter
from collections import OrderedDict
from itertools import izip
from django.db.models import Max

@login_required
def index(request):
    if request.user.groups.filter(name='admin').exists():
        table = ActionTable(Action.objects.filter(Q(action_type__action_type=1)|Q(action_type__action_type=2)|Q(action_type__action_type=4)), order_by='-created_date')
        RequestConfig(request, paginate={'per_page': 15}).configure(table)
        controllers = Controller.objects.filter(health=False)
        for controller in controllers:
            messages.success(request, controller.name + ' Sinyal alinamiyor.')

        return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Hareketler'})

    if request.user.groups.filter(name='guard').exists():
        form = GuestForm(request.POST,request.FILES)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/users/list/guest/')
        return render(request, 'tarlaguard/guard_main.html', {'user_menu':'active'})

    return HttpResponseRedirect('/accounts/logout/')

@login_required
def actions(request,actiontype):

    if actiontype == "error":
        table = ActionTable(Action.objects.filter(Q(action_type__action_type=3)|Q(action_type__action_type=4)), order_by='-created_date')
        table_label = 'Hatalı Hareketler'
    else:
        table = ActionTable(Action.objects.filter(Q(action_type__action_type=1)|Q(action_type__action_type=2)|Q(action_type__action_type=2)), order_by='-created_date')
        table_label = 'Tüm Hareketler'

    RequestConfig(request, paginate={'per_page': 20}).configure(table)
    return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': table_label,'action_menu':'active'})

@login_required
def logs(request):

    for controller in Controller.objects.filter(health=True):

        while True:
            response = send_controller('L',controller.ip_address,'')
            if response is  True or response is False:
                break
            response = response.split(",")
                #response = "15376653,1,1,10.6.2017,12:12:30".split(",")
	    try:
		door = Door.objects.get(entrance=controller,entrance_controller_pin=response[1])
	    except Door.DoesNotExist:
		continue
            try:
                identifier = Identifier.objects.get(key=response[0]) # chect identifier is exist

		if (door.enter):
		    action_type = Action_type.objects.get(action_type=int(response[2]))
		else:
		    action_type = Action_type.objects.get(action_type=2)
            except Identifier.DoesNotExist:
                identifier = Identifier.objects.create(key=response[0], #if not exist create UndefinedCard
                                    name='Tanımsız kart',
                                    identifier_type=2,
                                    is_active=False,deleted=True)

            try:
                personnel = Personnel.objects.get(identifier=identifier)
            except Personnel.DoesNotExist:
                personnel = None
                action_type = Action_type.objects.get(action_type=3)

            date_str = response[3]
            time_str = response[4].split("\n")

            date = date_str + "," + time_str[0]
            finaldate = datetime.strptime(date, '%d.%m.%Y,%H:%M:%S')

            action = Action(
                    personnel=personnel,
		    identifier=identifier,
                    door=Door.objects.get(entrance=controller,entrance_controller_pin=response[1]),
                    action_type=action_type,
                    created_date=finaldate
            )
            action.save()

        messages.success(request, controller.name + ' hareketler sisteme yuklendi.')

    return HttpResponseRedirect('/')

@login_required
def settime(request):

    for controller in Controller.objects.all():

        print controller.ip_address
        #print timezone.localtime(timezone.now())
        print time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime()) #"%a %b %d %H:%M:%S %Z %Y"
        timenow = time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime())
        response = send_controller('T',controller.ip_address,unicode(timenow))
        print response
        if response:
            controller.health = True
            messages.success(request, controller.name + ' saati guncellendi.')
        else:
            controller.health = False

        controller.save()


    return HttpResponseRedirect('/controllers/status/')

@login_required
def users(request,usertype):
    if usertype == 'personnel':
        table = PersonnelTable(Personnel.objects.filter( identifier__identifier_type=1 ))
        RequestConfig(request).configure(table)
        return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Personeller','user_menu':'active'})
    elif usertype == 'guest':
        table = GuestTable(Personnel.objects.filter(identifier__identifier_type=2))
        RequestConfig(request).configure(table)
        return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Ziyaretçiler','user_menu':'active'})


@login_required
def controller_status(request):
    controllers = Controller.objects.all().order_by('ip_address')

    return render(request, 'tarlaguard/controller/status.html', {'controller_menu':'active','controllers':controllers,'system_menu':'active'})


@login_required
def controller_permission(request, mac):

    print mac
    controller = get_object_or_404(Controller, mac=mac)
    permissions = Permission.objects.filter(door__entrance=controller)

    if permissions.count() == 0:
        messages.success(request, 'Guncellenecek Yetki Bulunamadi!')
	print "yetki yok"
        return HttpResponseRedirect('/users/list/personnel/')

    for permission in permissions:
        #print "personel", permission.personnel.nat_id
        #print "kapi: ", unicode(permission.door.name)
        #print "ip: ", permission.door.entrance.ip_address
        #print "pin: ", permission.door.entrance_controller_pin
        #print "card: ", unicode(permission.personnel.identifier.key)
        #print "----------"
        if controller.health is True:
            response = send_controller('A',permission.door.entrance.ip_address,unicode(permission.door.entrance_controller_pin) +","
										  + unicode(permission.personnel.identifier.key) )

        if response is True:
            messages.success(request, unicode(permission.door.name) + ' icin Yetki Guncellendi.')
        else:
            messages.success(request, unicode(permission.door.name) + ' icin Yetki GUNCELLENEMEDi!.')

    return HttpResponseRedirect('/users/access/' + permission.personnel.nat_id)
    #return render(request, 'tarlaguard/user/access.html' )
	#    	return HttpResponseRedirect('/users/list/personnel/')

def controller_startup(request, mac):
    time.sleep(5)
    try:
        #print mac
        controller = get_object_or_404(Controller, mac=mac)
        permissions = Permission.objects.filter(door__entrance=controller)
    except Permission.DoesNotExist:
        messages.success(request, 'Guncellenecek Yetki Bulunamadi!')

    #print controller.ip_address

    #print time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime()) #"%a %b %d %H:%M:%S %Z %Y"
    timenow = time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime())
    response = send_controller('T',controller.ip_address,unicode(timenow))
    #print response
    if response:
        controller.health = True
        messages.success(request, controller.name + ' saati guncellendi.')
    else:
        controller.health = False

    controller.save()
    return HttpResponse("OK\n")
#upload permissions to controller

    for permission in permissions:
        #print "personel", permission.personnel.nat_id
        #print "kapı: ", permission.door.name
        #print "ip: ", permission.door.entrance.ip_address
        #print "pin: ", permission.door.entrance_controller_pin
        #print "card: ", permission.personnel.identifier.key
        #print "----------"
        response = send_controller('A',permission.door.entrance.ip_address,unicode(permission.door.entrance_controller_pin) +","
										+ unicode(permission.personnel.identifier.key) )

def sorting(L):
    splitup = L.split('-')
    return splitup[2],splitup[1], splitup[0]

from datetime import datetime, timedelta
from django.db.models import Sum
@login_required
def user_detail(request, nat_id, template_name='tarlaguard/user/profile.html'):
    if request.method=='POST':
        personnel = Personnel.objects.get(nat_id=nat_id)
        if personnel.identifier.identifier_type == 1:
            form = PersonnelForm(request.POST,request.FILES, instance=personnel)
        elif personnel.identifier.identifier_type == 2:
            form = GuestForm(request.POST, instance=personnel)

        if form.is_valid():
            form.save()
            messages.success(request, 'Personel Güncellendi.')
        return HttpResponseRedirect('/users/detail/' + personnel.nat_id)
    else:
        try:
            personnel = Personnel.objects.get(nat_id=nat_id)
        except Personnel.DoesNotExist:
            messages.success(request, nat_id + ' TC kimlik nolu Kullanici Bulunamadi!')
            return HttpResponseRedirect('/')
        #workhour calculations
        actions = Action.objects.filter(personnel=personnel).order_by('-created_date')
        #---------------

        d = defaultdict(list)

        for action in actions:
            key, _ = str(action.created_date).split()
            d[key].append(str(action.created_date))
        workday = 0
        workhour = 0
        data =  [['Tarih', 'Saat']]

        #sort list by date reverse
        date_list = sorted(d, key=lambda x: datetime.strptime(x, '%Y-%m-%d'),reverse=True)
        i=0
        for date in date_list:
            dt_max = parser.parse(max(d[date]))
            dt_min = parser.parse(min(d[date]))
            if i < 10:
                data.append([date,int(dt_max.hour)-int(dt_min.hour)])
            workhour = workhour + int(dt_max.hour)-int(dt_min.hour)
            workday = workday + 1
            i = i + 1

        personnel.total_workday = workday
        personnel.total_workhour = workhour
        personnel.save()

        # DataSource object
        data_source = SimpleDataSource(data=data)

        # Chart object
        chart = gchart.ColumnChart(data_source,options={'title': 'Son 10 gün çalışma saati'})


        if personnel.identifier.identifier_type == 1:
            form = PersonnelForm(request.POST or None, instance=personnel)
        elif personnel.identifier.identifier_type == 2:
            form = GuestForm(request.POST or None, instance=personnel)


        table = ActionTable(Action.objects.filter(personnel=personnel), order_by='-created_date')
        RequestConfig(request, paginate={'per_page': 15}).configure(table)

        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/users/all/')
        return render(request, template_name, {'chart': chart,'table_list': table,'personnel': personnel,'form':form,'form_label':"Kart Tipi Güncelleme",'user_menu':'active'})

@login_required
def user_access(request, nat_id):
    if request.method == 'POST':
        try:
            controllers = Controller.objects.filter(health=True).order_by('name')
            doors = Door.objects.all().order_by('entrance_controller_pin')
            personnel = Personnel.objects.get(nat_id=nat_id)
            permissions = Permission.objects.filter(personnel=personnel)

            checkboxes = request.POST.getlist('permissions')
        except Personnel.DoesNotExist:
            raise Http404("Personnel Bulunamadi")

        if 'clearpermission' in request.POST:
            permissions = Permission.objects.filter(personnel=personnel)
            for permission in permissions:
                permission.delete()
                if permission.id != None:
                    messages.info(request,unicode(permission.personnel.name) + " - " + unicode(permission.door.entrance) + " kontrolcuden SiLiNEMEDi!")
                else:
                    messages.info(request, unicode(permission.personnel.name) + " - " + unicode(permission.door.entrance) + " kontrolcuden silindi.")
            return HttpResponseRedirect('#')

        elif 'savepermission' in request.POST:
            #CLEAR ALL PERMISSIONS
            permissions = Permission.objects.filter(personnel=personnel)
            for permission in permissions:
                permission.delete()

            message = ""
            for door_id in checkboxes:
                door = Door.objects.get(id=door_id)
                #print "personel", personnel.nat_id
                #print "kapı: ", unicode(door.name)
                #print "ip: ", door.entrance.ip_address
                #print "pin: ", door.entrance_controller_pin
                #print "card: ", personnel.identifier.key
                #print "----------"
                permission, created = Permission.objects.update_or_create(personnel=personnel,door=door)
                if permission.id != None:
                    messages.info(request,unicode(personnel.name) + " - " + unicode(door.entrance) + " kontrolcuye kaydedildi.")
                else:
                    messages.info(request, unicode(personnel.name) + " - " + unicode(door.entrance) + " kontrolcuye KAYDEDiLEMEDi!")
        return HttpResponseRedirect('#')
        #return render(request, 'tarlaguard/user/access.html', {'personnel': personnel,'controllers': controllers,'doors': doors,'permissions':permissions,'table_label':'Yetkilendirme','user_menu':'active'})
    else:
        try:
            controllers = Controller.objects.filter(health=True).order_by('name')
            doors = Door.objects.all().order_by('entrance_controller_pin')
            personnel = Personnel.objects.get(nat_id=nat_id)
            permissions = Permission.objects.filter(personnel=personnel)
        except Personnel.DoesNotExist:
            raise Http404("Personnel Bulunamadi")

        return render(request, 'tarlaguard/user/access.html', {'personnel': personnel,'controllers': controllers,'doors': doors,'permissions':permissions,'table_label':'Yetkilendirme','user_menu':'active'})

@login_required
def user_new(request,usertype, template_name='tarlaguard/form.html'):

    if usertype == 'personnel':
        nat_id = request.POST.get("nat_id", "")

        try:
            personnel = Personnel.objects.get(nat_id=nat_id)
            personnel.deleted = False
            form = PersonnelForm(request.POST,request.FILES or None, instance=personnel)
        except Personnel.DoesNotExist:
            form = PersonnelForm(request.POST or None)

        if form.is_valid():
            new_form = form.save(commit=False)
            new_form.save()
            return HttpResponseRedirect('/users/list/personnel/')
        return render(request, template_name, {'form':form,'form_label':"Yeni Personel",'user_menu':'active'})

    elif usertype == 'guest':
        nat_id = request.POST.get("nat_id", "")

        try:
            personnel = Personnel.objects.get(nat_id=nat_id)
            personnel.deleted = False
            form = GuestForm(request.POST or None, instance=personnel)
        except Personnel.DoesNotExist:
            form = GuestForm(request.POST or None)

        if form.is_valid():
            new_form = form.save(commit=False)
            new_form.save()
            return HttpResponseRedirect('/users/list/guest/')
        return render(request, template_name, {'form':form,'form_label':"Yeni Ziyaretçi",'user_menu':'active'})


@login_required
def user_delete(request, nat_id, template_name='tarlaguard/form.html'):
    personnel = get_object_or_404(Personnel, nat_id=nat_id)
    user_type = personnel.identifier.identifier_type

    personnel_type = personnel.identifier.identifier_type
    if request.method=='GET':
        personnel.identifier = None
        personnel.delete()
        if user_type is 1:
            messages.info(request, 'Personel Silindi.')
            return HttpResponseRedirect('/users/list/personnel/' )
        else:
            messages.info(request, 'Ziyaretçi Silindi.')
            return HttpResponseRedirect('/users/list/guest/' )
    return HttpResponseRedirect('/users/list/personnel/'  )

@login_required
def controller_detail(request, mac, template_name='tarlaguard/form.html'):
    controller = get_object_or_404(Controller, mac=mac)
    form = ControllerForm(request.POST or None, instance=controller)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/controllers/all/')
    return render(request, template_name, {'form':form,'form_label': 'Kontrolcü Düzenle','system_menu':'active'})

@login_required
def controller_all(request):
    table = ControllerTable(Controller.objects.all())
    RequestConfig(request).configure(table)
    return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Kontrolcüler','system_menu':'active'})

@login_required
def door_all(request):
    table = DoorTable(Door.objects.all())
    RequestConfig(request).configure(table)
    return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Kapılar','system_menu':'active'})

@login_required
def door_new(request):
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = DoorForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            form.save()
            messages.info(request, 'Yeni Kapı Oluşturuldu!')
            print form.cleaned_data.get('id')
            return HttpResponseRedirect('/doors/all/' + unicode(form.cleaned_data.get('id')))

    # if a GET (or any other method) we'll create a blank form
    else:
        form = DoorForm()

    return render(request, 'tarlaguard/form.html', {'form': form,'form_label': 'Kapı Oluştur','system_menu':'active'})

@login_required
def door_detail(request, id, template_name='tarlaguard/form.html'):
    door = get_object_or_404(Door, id=id)
    form = DoorForm(request.POST or None, instance=door)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/doors/all/')
    return render(request, template_name, {'form':form,'form_label': 'Kapı Düzenle','system_menu':'active'})

@login_required
def door_group_all(request):
    door_groups = Door_group.objects
    return render(request, "tarlaguard/door/door_groups.html", {'door_groups': door_groups,'system_menu':'active'})

@login_required
def door_group_new(request):
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = DoorGroupForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            form.save()
            messages.info(request, 'Yeni Kapı Grubu Oluşturuldu!')
            print form.cleaned_data.get('id')
            return HttpResponseRedirect('/doors/group/all/' + unicode(form.cleaned_data.get('id')))

    # if a GET (or any other method) we'll create a blank form
    else:
        form = DoorGroupForm()

    return render(request, 'tarlaguard/door/newdoorgroup.html', {'form': form})

@login_required
def identifier_all(request):
    table = IdentifierTable(Identifier.objects.all())
    RequestConfig(request).configure(table)
    return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Kartlar','identifier_menu':'active'})

@login_required
def identifier_new(request, template_name='tarlaguard/form.html'):
    key = request.POST.get("key", "")

    try:
        identifier = Identifier.objects.get(key=key)
        identifier.deleted = False
        form = IdentifierForm(request.POST or None, instance=identifier)
    except Identifier.DoesNotExist:
        form = IdentifierForm(request.POST or None)

    if form.is_valid():
        new_form = form.save(commit=False)
        new_form.save()
        return HttpResponseRedirect('/identifiers/all/')
    return render(request, template_name, {'form':form,'form_label':'Yeni Kart','identifier_menu':'active'})

@login_required
def identifier_edit(request, card_id, template_name='tarlaguard/form.html'):
    identifier = get_object_or_404(Identifier, key=card_id)
    form = IdentifierForm(request.POST or None, instance=identifier)
    form.fields['key'].disabled = True
    form.fields['key'].help_text = 'Kart numarası güncellenemez.Lütfen Yeni kart oluşturun.'
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/identifiers/all/')
    return render(request, template_name, {'form':form,'form_label': 'Kart Düzenle','identifier_menu':'active'})

@login_required
def identifier_delete(request, card_id, template_name='tarlaguard/form.html'):
    identifier = get_object_or_404(Identifier, key=card_id)
    if request.method=='GET':
        identifier.delete()
        messages.info(request, 'Kart Silindi.')
        return HttpResponseRedirect('/identifiers/all/')
    return HttpResponseRedirect('/identifiers/all/')

@login_required
def identifier_guest(request):
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = IdentifierGuestForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            form.save()
            messages.info(request, 'Misafir kartı atandı!')
            print form.cleaned_data.get('key')
            return HttpResponseRedirect('/identifier/guest/all/' + unicode(form.cleaned_data.get('key')))

    # if a GET (or any other method) we'll create a blank form
    else:
        form = IdentifierGuestForm()

    return render(request, 'tarlaguard/form.html', {'form': form,'form_label': 'Misafir Kartı Tanımlama','user_menu':'active'})

@login_required
def identifier_type_all(request):
    table = IdentifierTypeTable(IdentifierType.objects.all())
    RequestConfig(request).configure(table)
    return render(request, 'tarlaguard/table.html', {'table_list': table,'table_label': 'Kart Tipleri','identifier_menu':'active'})

@login_required
def identifier_type_new(request, template_name='tarlaguard/form.html'):
    form = IdentifierTypeForm(request.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/identifiers/type/all/')
    return render(request, template_name, {'form':form,'form_label':"Yeni Kart Tipi",'identifier_menu':'active'})

@login_required
def identifier_type_edit(request, card_id, template_name='tarlaguard/form.html'):
    identifiertype = get_object_or_404(IdentifierType, name=card_id)
    form = IdentifierTypeForm(request.POST or None, instance=identifiertype)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/identifiers/type/all/')
    return render(request, template_name, {'form':form,'form_label':"Kart Tipi Güncelleme",'identifier_menu':'active'})

@login_required
def identifier_type_delete(request, card_id, template_name='tarlaguard/form.html'):
    identifiertype = get_object_or_404(IdentifierType, name=card_id)
    if request.method=='GET':
        identifiertype.delete()
        messages.info(request, 'Kart Tipi Silindi.')
        return HttpResponseRedirect('/identifiers/type/all/')
    return HttpResponseRedirect('/identifiers/type/all/')


def api(request):
    if request.method=='GET':

        if 'key' in request.GET:
            try:
                personnel = Personnel.objects.get(identifier__key=request.GET['key'])
            except Personnel.DoesNotExist:
                response_data = {}
                response_data['error'] = 'Personnel not exist with key'
                return JsonResponse(response_data)
            response_data = {}
            response_data['nat_id'] = personnel.nat_id
            response_data['name'] = personnel.name
            response_data['surname'] = personnel.surname

            return JsonResponse(response_data)
        else:
            response_data = {}
            response_data['error'] = 'Use key to get personnel data'
    else:
        response_data = {}
        response_data['error'] = 'Send with GET request'

    return HttpResponseRedirect('/')
