# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from portunes.models import Controller,Door
from portunes.utils import send_controller
from datetime import datetime
import time

class Command(BaseCommand):
    help = 'Update controllers time'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('Update controllers time'))
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
