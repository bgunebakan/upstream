# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from portunes.models import Controller,Door,Identifier,Action_type,Action
from django.contrib.auth.models import User
from portunes.utils import send_controller
from datetime import datetime

class Command(BaseCommand):
    help = 'Get logs from controllers'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('GET LOGS FROM CONTROLLERS'))
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
                    self.stdout.write(self.style.ERROR('Door Does not exist'))
                    #messages.error(request,'Door does not exist pin:' + action_door + '. Controller: '+unicode(controller))
                    #return HttpResponseRedirect('/portunes/logs')

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

            #messages.success(request, controller.name + ' hareketler sisteme yuklendi.')
