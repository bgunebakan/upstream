# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from TED.models import Person,Department
from TED.serializers import PersonSerializer
from datetime import datetime
import json
from django.conf import settings
from django.core import serializers
import requests
from requests_ntlm import HttpNtlmAuth

class Command(BaseCommand):
    help = 'Sync persons with TED'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('SYNC PERSONS WITH TED'))
        Test = True
        if Test:
            print "- - TEST - -"
            person = Person.objects.get(id=500)
            print "PERSON: " + unicode(person)
            serializer = PersonSerializer(person)

            data = json.dumps(serializer.data)

            print "DATA: " + unicode(data)
            return
        else:
            url = settings.DOSIMETER_API_PERSON
            #data = serializers.serialize("json", [Department.objects.get(id=22)])
            person = Person.objects.get(id=500)
            print "DEPART: " + unicode(person)
            serializer = PersonSerializer(person)
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
