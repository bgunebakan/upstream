# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from TED.models import Visit,Department,Person
from datetime import datetime
import json
from datetime import datetime
from django.conf import settings
import requests
from requests_ntlm import HttpNtlmAuth
from TED.serializers import PersonSerializer,DepartmentSerializer,VisitSerializer
from django.core import serializers
from django.core.exceptions import ValidationError

class Command(BaseCommand):
    help = 'Get visit logs from TED'
    def to_int(str):
        if to_int is None:
            return 0
        else:
            return int(str)
    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('GET VISIT LOG FROM TED'))
        Test = False
        if Test:
            json_data = open('/opt/upstream/media/dump_json/visit.json','r').read()
            #data1 = json.load(json_data)
            #x = json.loads(json_data, object_hook=lambda d: namedtuple('items', d.keys())(*d.values()))
            data = json.loads(json_data)
            for item in data['items']:

                try:
                    department = Department.objects.get(id=int(item['department']['rel']))
                    print "DEPARTMENT:" + unicode(department)
                except (Department.DoesNotExist,TypeError):
                    department = None
                    #print int(item['department']['rel'])
                try:
                    person = Person.objects.get(id=int(item['person']['rel']))
                    print "PERSON:" + unicode(person)
                except (Person.DoesNotExist,TypeError):
                    person = None
                    #print int(item['person']['rel'])

                try:
                    visiT_ID = int(item['visiT_ID'])
                    exiT_TIME = None
                    dP_TIME = None
                    dS_TIME = None
                    dN_TIME = None
                    enteR_TIME = None

                    if item['exiT_TIME'] is not None:
                        exiT_TIME = datetime.strptime(item['exiT_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['dP_TIME'] is not None:
                        dP_TIME = datetime.strptime(item['dP_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['dS_TIME'] is not None:
                        dS_TIME = datetime.strptime(item['dS_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['dN_TIME'] is not None:
                        dN_TIME = datetime.strptime(item['dN_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['enteR_TIME'] is not None:
                        enteR_TIME = datetime.strptime(item['enteR_TIME'], "%Y-%m-%dT%H:%M:%S").date(),

                    print(unicode(item['person']['rel']) + " : "+ unicode(item['enteR_TIME']) +" - "+ unicode(enteR_TIME) +" - "+ unicode(exiT_TIME))

                    visit,created = Visit.objects.update_or_create(

                        id = visiT_ID,
                        defaults={'hS_STATE': int(item['hS_STATE'] or 0),
                        'person' : person,
                        'dP_STATE' : int(item['dP_STATE'] or 0),
                        'exiT_TIME' : exiT_TIME,
                        'dN_STATE' : int(item['dN_STATE'] or 0),
                        'e' : int(item['e'] or 0),
                        'dp' : int(item['dp'] or 0),
                        'ds' : int(item['ds'] or 0),
                        'hn' : int(item['hn'] or 0),
                        'dP_TIME' : dP_TIME,
                        'hp' : int(item['hp'] or 0),
                        'hs' : int(item['hs'] or 0),
                        'dn' : int(item['dn'] or 0),
                        'department' : department,
                        'dS_TIME' : dS_TIME,
                        'dN_TIME' : dN_TIME,
                        'enteR_PLACE' : int(item['enteR_PLACE'] or 0),
                        'hN_STATE' : int(item['hN_STATE'] or 0),
                        #'enteR_TIME' : enteR_TIME,
                        'dS_STATE' : int(item['dS_STATE'] or 0),
                        'exiT_PLACE' : int(item['exiT_PLACE'] or 0),
                        'duration' : int(item['duration'] or 0),
                        'hP_STATE' : int(item['hP_STATE'] or 0)}
                    )

                except Visit.DoesNotExist:
                    return


            #print(data['items'])
        else:
            url = settings.DOSIMETER_API_VISIT
            #session = requests.session()
            #payload = {'uname': 'Administrator', 'password': 'Heslo0.1.2.3'}
            #response=session.post(url, data=payload,verify=False)
            #response.headers['www-authenticate']
            response = requests.get(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS) )
                                #persons = response.json()
            json_data = json.dumps(response.json())
            #data = json.dumps(json_data)
            data = json.loads(json_data)
#            for item in data['items']:
#                print item['depnum']
            
            #print json_data
#            try:
#                personSaver = DepartmentSerializer(data=json.loads(data['items']), many=True)
#                if personSaver.is_valid(raise_exception=True):
#                    print "save persons"
#                    personSaver.save()
#                else:
#                    print "NOT VALID"
#                    print personSaver
#            except (ValidationError, Department.DoesNotExist):
#                raise serializers.ValidationError("human readable error message here")
#            return
            #json_data = open('/opt/upstream/media/dump_json/person.json','r').read()
            #data1 = json.load(json_data)
            #x = json.loads(json_data, object_hook=lambda d: namedtuple('items', d.keys())(*d.values()))
            #data = json.loads(json_data)
        #    data1 = json.dumps(json_data , indent=4)
        #    data = json.loads(data1)
            for item in data['items']:

                try:
                    department = Department.objects.get(id=int(item['department']['rel']))
                    print "DEPARTMENT:" + unicode(department)
                except (Department.DoesNotExist,TypeError):
                    department = None
                    #print int(item['department']['rel'])
                try:
                    person = Person.objects.get(id=int(item['person']['rel']))
                    print "PERSON:" + unicode(person)
                except (Person.DoesNotExist,TypeError):
                    person = None
                    #print int(item['person']['rel'])

                try:
                    visiT_ID = int(item['visiT_ID'])
                    exiT_TIME = None
                    dP_TIME = None
                    dS_TIME = None
                    dN_TIME = None
                    enteR_TIME = None

                    if item['exiT_TIME'] is not None:
                        exiT_TIME = datetime.strptime(item['exiT_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['dP_TIME'] is not None:
                        dP_TIME = datetime.strptime(item['dP_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['dS_TIME'] is not None:
                        dS_TIME = datetime.strptime(item['dS_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['dN_TIME'] is not None:
                        dN_TIME = datetime.strptime(item['dN_TIME'], "%Y-%m-%dT%H:%M:%S").date()
                    if item['enteR_TIME'] is not None:
                        enteR_TIME = datetime.strptime(item['enteR_TIME'], "%Y-%m-%dT%H:%M:%S").date(),

                    print(unicode(item['person']['rel']) + " : "+ unicode(item['enteR_TIME']) +" - "+ unicode(enteR_TIME) +" - "+ unicode(exiT_TIME))

                    visit,created = Visit.objects.update_or_create(

                        id = visiT_ID,
                        defaults={'hS_STATE': int(item['hS_STATE'] or 0),
                        'person' : person,
                        'dP_STATE' : int(item['dP_STATE'] or 0),
                        'exiT_TIME' : exiT_TIME,
                        'dN_STATE' : int(item['dN_STATE'] or 0),
                        'e' : int(item['e'] or 0),
                        'dp' : int(item['dp'] or 0),
                        'ds' : int(item['ds'] or 0),
                        'hn' : int(item['hn'] or 0),
                        'dP_TIME' : dP_TIME,
                        'hp' : int(item['hp'] or 0),
                        'hs' : int(item['hs'] or 0),
                        'dn' : int(item['dn'] or 0),
                        'department' : department,
                        'dS_TIME' : dS_TIME,
                        'dN_TIME' : dN_TIME,
                        'enteR_PLACE' : int(item['enteR_PLACE'] or 0),
                        'hN_STATE' : int(item['hN_STATE'] or 0),
                        #'enteR_TIME' : enteR_TIME,
                        'dS_STATE' : int(item['dS_STATE'] or 0),
                        'exiT_PLACE' : int(item['exiT_PLACE'] or 0),
                        'duration' : int(item['duration'] or 0),
                        'hP_STATE' : int(item['hP_STATE'] or 0)}
                    )

                except Visit.DoesNotExist:
                    return
