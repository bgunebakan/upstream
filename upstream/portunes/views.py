# -*- coding: utf-8 -*-
from django.shortcuts import render,get_object_or_404
from django.http import HttpResponse
from .models import *
from .forms import *
from .tables import *
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import permission_required
from datetime import datetime
from django.contrib.auth.models import User
from cruds_adminlte.crud import CRUDView
from cruds_adminlte.inline_crud import InlineAjaxCRUD
from cruds_adminlte.filter import FormFilter
from django.contrib import messages
from django.http import HttpResponseRedirect
from django.http import Http404
from django_tables2 import RequestConfig

@login_required
#@permission_required('portunes.can_add_permission', login_url='/portunes/guard/dashboard/')
def dashboard(request):
    action_table = ActionTable(Action.objects.filter(Q(action_type__action_type=1)|Q(action_type__action_type=2)|Q(action_type__action_type=3)|Q(action_type__action_type=4)), order_by='-created_date')
    RequestConfig(request, paginate={'per_page': 15}).configure(action_table)

    user_table = UserTable(User.objects.all(), order_by='first_name')
    RequestConfig(request, paginate={'per_page': 15}).configure(user_table)

    #controllers = Controller.objects.filter(health=False)
    #for controller in controllers:
        #messages.error(request, controller.name + ' Sinyal alinamiyor.')
    controllers = Controller.objects.all()

    return render(request, 'portunes/dashboard.html', {'action_table': action_table,'user_table': user_table,'controllers': controllers})

@login_required
#@permission_required('portunes.can_see_avaliable_', login_url='/portunes/')
def guard_dashboard(request):
    #form = GuestForm(request.POST,request.FILES)
    #if form.is_valid():
    #    form.save()
    #return HttpResponseRedirect('/users/list/guest/')
    return render(request, 'portunes/guard_main.html', {'user_menu':'active'})

class ControllerCRUD(CRUDView):
    model = Controller
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = ControllerForm
    update_form = ControllerForm

    views_available=['create', 'list', 'update', 'detail']
    fields = ['name','mac','ip_address','health','created_date','updated_date','deleted']
    list_fields = ['name','mac','health']
    display_fields = ['name','mac','ip_address','health','created_date','updated_date','deleted']

    search_fields = ['name','ip','mac']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class DoorCRUD(CRUDView):
    model = Door
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = DoorForm
    update_form = DoorForm

    views_available=['create', 'list', 'update','delete','detail']
    fields = ['name','entrance','entrance_controller_pin','antipassback','enter','description','created_date','updated_date' ,'deleted' ]
    list_fields = ['name','entrance_controller_pin','enter']
    display_fields = ['name','entrance','entrance_controller_pin','antipassback','enter','description','created_date','updated_date' ,'deleted' ]

    search_fields = ['name','entrance','entrance_controller_pin']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class DoorGroupCRUD(CRUDView):
    model = Door_group
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    #add_form = DoorForm
    #update_form = DoorForm

    views_available=['create', 'list', 'update','delete']
    fields = ['name','doors']
    list_fields = ['name']
    display_fields = ['name','doors']

    search_fields = ['name']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class IdentifierCRUD(CRUDView):
    model = Identifier
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = IdentifierForm
    update_form = IdentifierForm

    views_available=['create', 'list', 'update','delete']
    fields = ['name','identifier_type','user','is_active','created_date','deleted' ]
    list_fields = ['name','identifier_type','user','is_active','created_date','deleted' ]
    display_fields = ['name','identifier_type','user','is_active','created_date','deleted' ]

    search_fields = ['name','identifier_type','user','is_active']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

@login_required
def logs(request):

    for controller in Controller.objects.filter(health=True):

        while True:
            response = send_controller('L',controller.ip_address,'')
            if response is  True or response is False:
                break
            response = response.split(",")

            action_card = response[0]
            action_door = response[1]
            action_no = int(response[2])

            date_str = response[3]
            time_str = response[4].split("\n")

            date = date_str + "," + time_str[0]
            action_datetime = datetime.strptime(date, '%d.%m.%Y,%H:%M:%S')

            print "card:" + action_card
            print "door: " + action_door
            print "type: " + unicode(action_no)
            print "datetime: " + unicode(action_datetime)
                #response = "15376653,1,1,10.6.2017,12:12:30".split(",")
            try:
		        door = Door.objects.get(entrance=controller,entrance_controller_pin=action_door)
            except Door.DoesNotExist:
                messages.error(request,'Door does not exist pin:' + action_door + '. Controller: '+unicode(controller))
                return HttpResponseRedirect('/portunes/logs')

            try:
                identifier = Identifier.objects.get(key=action_card) # chect identifier is exist
            except Identifier.DoesNotExist:
                identifier = Identifier.objects.create(key=action_card, #if not exist create UndefinedCard
                                    name='Tanımsız kart',
                                    identifier_type=2,
                                    is_active=False,deleted=True)

            if (action_no is 1) and (door.enter): #card enter
                action_type = Action_type.objects.get(action_type=action_no)
                try:
                    user = User.objects.get(id=identifier.user.id)
                except AttributeError:
                    print "----------USER HAS DELETED--------"
            elif (action_no is 1) and (door.enter is not True): # card exit
                action_type = Action_type.objects.get(action_type=2)
                try:
                    user = User.objects.get(id=identifier.user.id)
                except AttributeError:
                    print "----------USER HAS DELETED--------"
            elif action_no is 3: #button exit
                action_type = Action_type.objects.get(action_type=action_no)
                user = None
            elif action_no is 4: #card denied
                action_type = Action_type.objects.get(action_type=action_no)
                try:
                    if identifier.user is not None:
                        user = User.objects.get(id=identifier.user.id)
                    else:
                        user = None
                except User.DoesNotExist:
                    user = None
            else: #status logs
                action_type = Action_type.objects.get(action_type=action_no)
                user = None

            action = Action(
                    user=user,
		    identifier=identifier,
                    door=Door.objects.get(entrance=controller,entrance_controller_pin=action_door),
                    action_type=action_type,
                    created_date=action_datetime
            )
            action.save()

        messages.success(request, controller.name + ' hareketler sisteme yuklendi.')

    return HttpResponseRedirect('/portunes/')
# @login_required
# def logs(request):
#
#     for controller in Controller.objects.filter(health=True):
#
#         while True:
#             response = send_controller('L',controller.ip_address,'')
#             if response is  True or response is False:
#                 break
#             response = response.split(",")
#                 #response = "15376653,1,1,10.6.2017,12:12:30".split(",")
#             try:
# 		        door = Door.objects.get(entrance=controller,entrance_controller_pin=response[1])
#             except Door.DoesNotExist:
#                 continue
#             try:
#                 identifier = Identifier.objects.get(key=response[0]) # chect identifier is exist
#             except Identifier.DoesNotExist:
#                 identifier = Identifier.objects.create(key=response[0], #if not exist create UndefinedCard
#                                     name='Tanımsız kart',
#                                     identifier_type=2,
#                                     is_active=False,deleted=True)
#
#             if (door.enter):
#                 action_type = Action_type.objects.get(action_type=int(response[2]))
#             else:
#                 action_type = Action_type.objects.get(action_type=2)
#             print action_type.action_type
#
#             try:
#                 if action_type.action_type is not 4:
#                     user = User.objects.get(id=identifier.user.id)
#                 else:
#                     user = None
#             except User.DoesNotExist:
#                 user = None
#                 action_type = Action_type.objects.get(action_type=3)
#
#             date_str = response[3]
#             time_str = response[4].split("\n")
#
#             date = date_str + "," + time_str[0]
#             finaldate = datetime.strptime(date, '%d.%m.%Y,%H:%M:%S')
#
#             action = Action(
#                     user=user,
# 		    identifier=identifier,
#                     door=Door.objects.get(entrance=controller,entrance_controller_pin=response[1]),
#                     action_type=action_type,
#                     created_date=finaldate
#             )
#             action.save()
#
#         messages.success(request, controller.name + ' hareketler sisteme yuklendi.')
#
#     return HttpResponseRedirect('/portunes/')

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


    return HttpResponseRedirect('/portunes/')

@login_required
def controller_status(request):
    controllers = Controller.objects.all().order_by('ip_address')

    return render(request, 'portunes/controller/status.html', {'controller_menu':'active','controllers':controllers,'system_menu':'active'})


@login_required
def controller_permission(request, id):

    controller = get_object_or_404(Controller, id=id)
    permissions = Permission.objects.filter(door__entrance=controller)

    if permissions.count() == 0:
        messages.error(request, 'Guncellenecek Yetki Bulunamadi!')
        return HttpResponseRedirect('/portunes/controller/' + unicode(controller.id))

    for permission in permissions:
        #print "personel", permission.personnel.nat_id
        #print "kapi: ", unicode(permission.door.name)
        #print "ip: ", permission.door.entrance.ip_address
        #print "pin: ", permission.door.entrance_controller_pin
        #print "card: ", unicode(permission.personnel.identifier.key)
        #print "----------"

        if controller.health is True:
            response = send_controller('A',permission.door.entrance.ip_address,unicode(permission.door.entrance_controller_pin) +","
										  + unicode(permission.identifier.key) )

        if response is True:
            messages.success(request, unicode(permission.door.name) + ' icin Yetki Guncellendi.')
        else:
            messages.success(request, unicode(permission.door.name) + ' icin Yetki GUNCELLENEMEDi!.')

    return HttpResponseRedirect('/portunes/user/access/' + permission.identifier.user.id)
    #return render(request, 'portunes/user/access.html' )
	#    	return HttpResponseRedirect('/users/list/personnel/')

def controller_startup(request, id):
    #time.sleep(5)
    try:
        print id
        controller = get_object_or_404(Controller, id=id)
        permissions = Permission.objects.filter(door__entrance=controller)
    except Permission.DoesNotExist:
        messages.error(request, 'Guncellenecek Yetki Bulunamadi!')
        return HttpResponseRedirect('/portunes/controller/' + unicode(controller.id))

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
										+ unicode(permission.identifier.key) )


def sorting(L):
    splitup = L.split('-')
    return splitup[2],splitup[1], splitup[0]



@login_required
def user_access(request, user_id):
    if request.method == 'POST':
        try:
            controllers = Controller.objects.filter(health=True).order_by('name')
            doors = Door.objects.all().order_by('entrance_controller_pin')
            user = User.objects.get(id=user_id)
            identifier = Identifier.objects.filter(user=user)
            permissions = Permission.objects.filter(identifier__in=identifier)

            checkboxes = request.POST.getlist('permissions')
        except User.DoesNotExist:
            raise Http404("Kullanici Bulunamadi")

        if 'clearpermission' in request.POST:
            permissions = Permission.objects.filter(identifier__in=identifier)
            if permissions:
                for permission in permissions:
                    permission.delete()
                    if permission.id != None:
                        messages.error(request,unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " kontrolcuden SiLiNEMEDi!")
                    else:
                        messages.info(request, unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " kontrolcuden silindi.")
            return HttpResponseRedirect('#')

        elif 'savepermission' in request.POST:
            #CLEAR ALL PERMISSIONS
            permissions = Permission.objects.filter(identifier__in=identifier)
            if permissions:
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
                for iden in identifier:
                    permission, created = Permission.objects.update_or_create(identifier=iden,door=door)
                    if permission.id != None:
                        messages.info(request,unicode(user) + " - " + unicode(door.entrance) + " kontrolcuye kaydedildi.")
                    else:
                        messages.error(request, unicode(user) + " - " + unicode(door.entrance) + " kontrolcuye KAYDEDiLEMEDi!")

            return HttpResponseRedirect('#')
        #return render(request, 'portunes/user/access.html', {'personnel': personnel,'controllers': controllers,'doors': doors,'permissions':permissions,'table_label':'Yetkilendirme','user_menu':'active'})
    else:
        try:
            controllers = Controller.objects.filter(health=True).order_by('name')
            doors = Door.objects.all().order_by('entrance_controller_pin')
            user = User.objects.get(id=user_id)
            identifier = Identifier.objects.filter(user=user)
            permissions = Permission.objects.filter(identifier__in=identifier)
            door_groups = Door_group.objects.all()
        except User.DoesNotExist:
            raise Http404("Kullanici Bulunamadi")

        return render(request, 'portunes/user/access.html', {'user': user,'controllers': controllers,'doors': doors,'door_groups': door_groups,'identifier':identifier,'permissions':permissions,'table_label':'User Permissions','user_menu':'active'})
