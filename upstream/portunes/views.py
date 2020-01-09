# -*- coding: utf-8 -*-
from django.shortcuts import render,get_object_or_404
from django.http import HttpResponse
from .models import *
from .forms import *
from .tables import *
from .utils import release_identifier,clear_identifier_permissions,take_vehicle_identifier,release_vehicle_identifier
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
import time

@login_required
@permission_required('portunes.action.view')
def dashboard(request):
    action_table = ActionTable(Action.objects.filter(Q(action_type__action_type=1)|Q(action_type__action_type=2)|Q(action_type__action_type=3)|Q(action_type__action_type=4)), order_by='-created_date')
    RequestConfig(request, paginate={'per_page': 15}).configure(action_table)

    user_table = UserTable(User.objects.filter(is_active=True), order_by='first_name')
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

    views_available=['create', 'list', 'update', 'detail','delete']
    fields = ['name','mac','ip_address','health','created_date','updated_date','deleted']
    list_fields = ['name','ip_address','health']
    display_fields = ['name','mac','ip_address','health','created_date','updated_date','deleted']

    search_fields = ['name','ip_address','mac']
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
    list_fields = ['name','entrance','entrance_controller_pin','enter']
    display_fields = ['name','entrance','entrance_controller_pin','antipassback','enter','description','created_date','updated_date' ,'deleted' ]

    search_fields = ['name','entrance__name']
    #split_space_search = False
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class DoorGroupCRUD(CRUDView):
    model = DoorGroup
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = DoorGroupForm
    update_form = DoorGroupForm

    views_available=['create', 'list', 'update','delete']
    fields = ['name','doors','group_type']
    list_fields = ['name','group_type']
    display_fields = ['name','doors','group_type']

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
    update_form = IdentifierUpdateForm

    views_available=['create', 'list', 'update','delete']
    fields = ['name','identifier_type','user','is_active','created_date','deleted' ]
    list_fields = ['name','identifier_type','user','key','created_date','deleted' ]
    display_fields = ['name','identifier_type','user','is_active','created_date','deleted' ]

    search_fields = ['name','key']
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
            try:
                action_datetime = datetime.strptime(date, '%d.%m.%Y,%H:%M:%S')
            except ValueError:
                print  str(controller) + " log datetime is not correct"
                continue
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
                    user = None
            elif (action_no is 1) and (door.enter is not True): # card exit
                action_type = Action_type.objects.get(action_type=2)
                try:
                    user = User.objects.get(id=identifier.user.id)
                except AttributeError:
                    print "----------USER HAS DELETED--------"
                    user = None
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
            messages.success(request, controller.name + ' date-time has updated.')
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
        messages.error(request, 'Cannot find any permission!')
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
                messages.success(request, unicode(permission.door.name) + ' permission has updated.')
            else:
                messages.error(request, unicode(permission.door.name) + ' permission CANNOT UPDATED!.')

    return HttpResponseRedirect('/portunes/controller/' + unicode(id))
    #return render(request, 'portunes/user/access.html' )
	#    	return HttpResponseRedirect('/users/list/personnel/')

def controller_startup(request, id):
    #time.sleep(5)
    try:
        print id
        controller = get_object_or_404(Controller, id=id)
        permissions = Permission.objects.filter(door__entrance=controller)
    except Permission.DoesNotExist:
        messages.error(request, 'Cannot find any permission!')
        return HttpResponseRedirect('/portunes/controller/' + unicode(controller.id))

    #print controller.ip_address

    #print time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime()) #"%a %b %d %H:%M:%S %Z %Y"
    timenow = time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime())
    response = send_controller('T',controller.ip_address,unicode(timenow))
    #print response
    if response:
        controller.health = True
        messages.success(request, controller.name + ' date-time has updated.')
    else:
        controller.health = False
    controller.save()

    # UPDATE PERMISSIONS
    if controller.health is True:
        for permission in permissions:
            response = send_controller('A',permission.door.entrance.ip_address,unicode(permission.door.entrance_controller_pin) +","
										  + unicode(permission.identifier.key) )
            if response is True:
                messages.success(request, unicode(permission.door.name) + ' permission has updated.')
            else:
                messages.error(request, unicode(permission.door.name) + ' permission CANNOT UPDATED!.')

    return HttpResponseRedirect('/portunes/controller/' + unicode(id))

def sorting(L):
    splitup = L.split('-')
    return splitup[2],splitup[1], splitup[0]


@login_required
@permission_required('portunes.permission.edit')
def user_access(request, user_id):
    if request.method == 'POST':

        try:
            controllers = Controller.objects.filter(health=True).order_by('name')
            doors = Door.objects.all().order_by('entrance_controller_pin')
            user = User.objects.get(id=user_id)
            identifier = Identifier.objects.filter(Q(user=user) & ~Q(identifier_type=3))
            car_identifier = Identifier.objects.filter(user=user,identifier_type=3)
            permissions = Permission.objects.filter(identifier__in=identifier)

            checkboxes = request.POST.getlist('permissions')
        except User.DoesNotExist:
            raise Http404("Cannot find User!")

        if 'clearpermission' in request.POST:
            permissions = Permission.objects.filter(identifier__in=identifier)
            if permissions:
                for permission in permissions:
                    permission.delete()
                    if permission.id != None:
                        messages.error(request,unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " CANNOT DELETED!")
                    else:
                        pass
                        #messages.info(request, unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " deleted.")
                messages.info(request,unicode(user.get_full_name()) + " permissions has deleted on all controllers.")
            return HttpResponseRedirect('/portunes/access/' + str(user_id))

        elif 'deleteidentifier' in request.POST:
            identifier_id = request.POST.get("identifier","")
            #print identifier + "---------------"
            if release_identifier(models.Identifier.objects.filter(identifier_id)):
                messages.success(request, unicode(identifier) + unicode(" identifier has deleted from user"))
                return HttpResponseRedirect('/portunes/access/' + str(user_id))

        elif 'savepermission' in request.POST:
            #CLEAR ALL PERMISSIONS
            clear_identifier_permissions(identifier)

            take_vehicle_identifier(car_identifier,user)

            message = ""
            for door_id in checkboxes:
                door = Door.objects.get(id=door_id)
                #print unicode(door_id) + " name: "
                #print "personel", personnel.nat_id
                #print "kapı: ", unicode(door.name)
                #print "ip: ", door.entrance.ip_address
                #print "pin: ", door.entrance_controller_pin
                #print "card: ", personnel.identifier.key
                #print "----------"
                vehicle_door_group = DoorGroup.objects.filter(group_type=7)
                for door_group in vehicle_door_group:
                    if not door in door_group.doors.filter(doorgroup=door_group.id):

                        for iden in identifier:
                            permission, created = Permission.objects.update_or_create(identifier=iden,door=door)
                            if permission.id != None:
                                pass
                                #messages.info(request,unicode(user.get_full_name()) + " - " + unicode(door.entrance) + " updated.")
                            else:
                                messages.error(request, unicode(user.get_full_name()) + " - " + unicode(door.entrance) + " CANNOT UPDATED!")

            messages.info(request,unicode(user.get_full_name()) + " permissions has updated on all controllers.")

            return HttpResponseRedirect('/portunes/access/' + str(user_id))
        elif 'dosimeteraccess' in request.POST:
            identifier_id = int(request.POST.get("identifier",""))
            car_identifier_id = int(request.POST.get("car_identifier",""))
            dosimeter_access = request.POST.get("dosimeter_access","")

            #print(identifier_id)
            #print(car_identifier_id)

            if identifier_id != 0:
                identifier = Identifier.objects.get(id=identifier_id)
                delete_identifiers = Identifier.objects.filter(~Q(id=identifier_id) & Q(user__id=user_id) & ~Q(identifier_type=3) )
                messages.info(request,"Update card " + str(identifier))
                identifier.user = User.objects.get(id=user_id)
                identifier.save()

                if delete_identifiers:
                    if release_identifier(delete_identifiers):
                        print(str(id) + str(" has released."))
                        messages.error(request,"Delete extra cards for migrations " + str(delete_identifiers))
            else:
                identifiers = Identifier.objects.filter(Q(user__id=user_id) & (Q(identifier_type=1) | Q(identifier_type=2)))
                if release_identifier(identifiers):
                    print(str(id) + str(" has released."))
                    messages.error(request,str(identifiers) + "Identifier has deleted! ")

            if car_identifier_id != 0:
                car_identifier = Identifier.objects.get(id=car_identifier_id)
                delete_car_identifiers = Identifier.objects.filter(~Q(id=car_identifier_id) & Q(user__id=user_id) & Q(identifier_type=3) )

                take_vehicle_identifier([car_identifier],user)
                messages.info(request,"Update vehicle card " + str(car_identifier))

                if delete_car_identifiers:
                    if release_vehicle_identifier(delete_car_identifiers):
                        messages.error(request,"Delete extra car cards for migrations " + str(delete_car_identifiers))
            else:
                car_identifiers = Identifier.objects.filter(Q(user__id=user_id) & Q(identifier_type=3))
                if car_identifiers:
                    release_vehicle_identifier(car_identifiers)
                    messages.error(request,"Delete vehicle card " + str(car_identifiers))

            try:
                if dosimeter_access == "true":
                    identifier = Identifier.objects.get(id=identifier_id)
                    identifier.dosimeter_access = True
                    identifier.save()
                    messages.success(request,"dosimeter access granted")
                else:
                    identifier = Identifier.objects.get(id=identifier_id)
                    identifier.dosimeter_access = False
                    identifier.save()
                    messages.info(request,"Dosimeter access not granted")
            except Identifier.DoesNotExist as e:
                if dosimeter_access == "true":
                    messages.info(request,"Dosimeter access not granted because User has no Identifier!")

            # try:
            #     print(identifier)
            # except:
            #     print(identifiers)
            #
            # try:
            #     print(car_identifier)
            # except:
            #     print(car_identifiers)
            #
            # print(dosimeter_access)

            #messages.info(request,unicode(user.get_full_name()) + " - " + unicode(identifier.first().key) + " dosimeter access granted.")

            return HttpResponseRedirect('/portunes/access/' + str(user_id))
        else:
            return HttpResponseRedirect('/portunes/access/' + str(user_id))
        #return render(request, 'portunes/user/access.html', {'personnel': personnel,'controllers': controllers,'doors': doors,'permissions':permissions,'table_label':'Yetkilendirme','user_menu':'active'})
    else:
        print("-----------------------")
        try:
            controllers = Controller.objects.filter(health=True).order_by('name')
            doors = Door.objects.all().order_by('entrance_controller_pin')
            user = User.objects.get(id=user_id)
            all_identifiers = Identifier.objects.all()
            identifier = Identifier.objects.filter(user=user)
            permissions = Permission.objects.filter(identifier__in=identifier)
            door_groups = DoorGroup.objects.all()
            vehicle_doors = list()
            for door_group in door_groups:
                if door_group.group_type == 7:
                    for door in door_group.doors.filter(doorgroup=door_group.id):
                        vehicle_doors.append(door)

            radiation_doors = list()
            for door_group in door_groups:
                if door_group.group_type == 5:
                    for door in door_group.doors.filter(doorgroup=door_group.id):
                        radiation_doors.append(door)

        except User.DoesNotExist:
            raise Http404("Cannot Find User!")

        return render(request, 'portunes/user/access.html', {'radiation_doors':radiation_doors,'vehicle_doors':vehicle_doors,'user': user,'controllers': controllers,'doors': doors,'door_groups': door_groups,'identifier':identifier,'all_identifiers':all_identifiers,'permissions':permissions,'table_label':'User Permissions','user_menu':'active'})

@login_required
@permission_required('portunes.permission.edit')
def user_actions(request, user_id):
    user = User.objects.get(id=user_id)
    action_table = ActionTable(Action.objects.filter(user=user), order_by='-created_date')
    RequestConfig(request, paginate={'per_page': 15}).configure(action_table)

    return render(request, 'portunes/user/actions.html', {'action_table': action_table,'user': user})
##DOOR Access
@login_required
@permission_required('portunes.permission.edit')
def door_access(request, door_id):
    if request.method == 'POST':
        try:
            door = Door.objects.get(id=door_id)
            controller = Controller.objects.get(health=True,id=door.entrance.id)

            checkboxes = request.POST.getlist('users')
        except Door.DoesNotExist:
            raise Http404("Door or Controller Does not Exist")

        if 'clearpermission' in request.POST:
            #CLEAR ALL PERMISSIONS
            permissions = Permission.objects.filter(door__id=door_id)
            if permissions:
                for permission in permissions:
                    permission.delete()
                    if permission.id != None:
                        messages.error(request,unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " CANNOT DELETED!")
                    else:
                        messages.info(request, unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " deleted.")
            return HttpResponseRedirect('/portunes/door/'+unicode(door_id))

        elif 'savepermission' in request.POST:

            #CLEAR ALL PERMISSIONS
            permissions = Permission.objects.filter(door__id=door_id)
            if permissions:
                for permission in permissions:
                    permission.delete()

            message = ""
            for user_id in checkboxes:
                try:
                    user = User.objects.get(id=user_id)
                    identifier = Identifier.objects.filter(user=user)
                    #permission = Permission.objects.get(door__id=door_id,identifier__in=identifier)
                except Identifier.DoesNotExist:
                    continue
                door = Door.objects.get(id=door_id)

                for iden in identifier:
                    permission, created = Permission.objects.update_or_create(identifier=iden,door=door)
                    #print "iden:" + unicode(iden)
                    #print "user:" + unicode(user)
                    #print "-----"
                    if permission.id != None:
                        messages.info(request,unicode(user) + " - " + unicode(door.entrance) + " has updated.")
                    else:
                        messages.error(request, unicode(user) + " - " + unicode(door.entrance) + " CANNOT UPDATED!")

            return HttpResponseRedirect('/portunes/door/'+unicode(door_id))
    else:
        return HttpResponseRedirect('/portunes/door/'+unicode(door_id))
