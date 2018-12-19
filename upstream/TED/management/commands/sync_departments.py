# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from TED.models import Person,Department
from TED.serializers import DepartmentSerializer
from datetime import datetime
import json
from django.conf import settings
from django.core import serializers
import requests
from requests_ntlm import HttpNtlmAuth

class Command(BaseCommand):
    help = 'Sync departments with TED'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('SYNC DEPARTMENTS WITH TED'))
        Test = False
        if Test:
            print "TEST"
        else:
            url = settings.DOSIMETER_API_DEPARTMENT
            #data = serializers.serialize("json", [Department.objects.get(id=22)])
            department = Department.objects.get(id=22)
            print "DEPART: " + unicode(department)
            serializer = DepartmentSerializer(department)
            #if serializer.is_valid():
            data = json.dumps(serializer.data)
            #else:
            #    print serializer
            #    return
            #data = {
            #    "deparT_ID": "777",
            #    "enable": "1",
            #    "name": "Tenant create",
            #    "depnum": "MINIMAL"
            #}
            #data = json.dumps(data)
            print "DATA: " + unicode(data)

            headers = {'Content-Type':'application/json'}
            response = requests.post(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS),
                                data = data,headers=headers )
            print "RESPONSE: " + unicode(response) + " - " + unicode(response.reason)
            print response.content
