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
        Test = True
        if Test:
            department_json_data = open('/opt/upstream/media/dump_json/department.json','r').read()
            department_data = json.loads(department_json_data)

            person_json_data = open('/opt/upstream/media/dump_json/person.json','r').read()
            person_data = json.loads(person_json_data)

            visit_json_data = open('/opt/upstream/media/dump_json/visit.json','r').read()
            visit_data = json.loads(visit_json_data)

            for item in department_data['items']:
                print item
                deparT_ID = int(item['deparT_ID'])
                department,created = Department.objects.update_or_create(

                    id = deparT_ID,
                    defaults={'depnum': item['depnum'],
                                'enable' : int(item['enable'] or 0),
                                'name' : item['name']
                    }
                )


            for item in person_data['items']:
                print item
                persoN_ID = int(item['persoN_ID'])
                try:
                    department = Department.objects.get(id=int(item['department']['rel']))
                    print "DEPARTMENT:" + unicode(department)
                except (Department.DoesNotExist,TypeError):
                    department = None
                birthdate = None
                if item['birthdate'] is not None:
                    birthdate = datetime.strptime(item['birthdate'], "%Y-%m-%dT%H:%M:%S")

                person,created = Person.objects.update_or_create(

                    id = persoN_ID,
                    defaults={'personnum': item['personnum'],
                                'enable' : int(item['enable'] or 0),
                                'firstname' : item['firstname'],
                                'surname' : item['surname'],
                                'title' : item['title'],
                                'visitor' : int(item['visitor'] or 0),
                                'birthdate' : birthdate,
                                'department' : department,
                                'titleafter' : item['titleafter']
                    }
                )
            for item in visit_data['items']:

                try:
                    department = Department.objects.get(id=int(item['department']['rel']))
                    print "DEPARTMENT:" + unicode(department)
                except (Department.DoesNotExist,TypeError):
                    department = None

                try:
                    person = Person.objects.get(id=int(item['person']['rel']))
                    print "PERSON:" + unicode(person)
                except (Person.DoesNotExist,TypeError):
                    person = None

                try:
                    visiT_ID = int(item['visiT_ID'])
                    exiT_TIME = None
                    dP_TIME = None
                    dS_TIME = None
                    dN_TIME = None
                    enteR_TIME = None

                    if item['enteR_TIME'] is not None:
                        enteR_TIME = datetime.strptime(item['enteR_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['dP_TIME'] is not None:
                        dP_TIME = datetime.strptime(item['dP_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['dS_TIME'] is not None:
                        dS_TIME = datetime.strptime(item['dS_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['dN_TIME'] is not None:
                        dN_TIME = datetime.strptime(item['dN_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['exiT_TIME'] is not None:
                        exiT_TIME = datetime.strptime(item['exiT_TIME'], "%Y-%m-%dT%H:%M:%S")

                    print(unicode(item['person']['rel']) + " : "+ unicode(item['enteR_TIME']) +" - "+ unicode(enteR_TIME) +" - "+ unicode(exiT_TIME))

                    visit,created = Visit.objects.update_or_create(

                        id = visiT_ID,
                        defaults={'hS_STATE': int(item['hS_STATE'] or 0),
                        'person' : person,
                        'dP_STATE' : int(item['dP_STATE'] or 0),
                        'exiT_TIME' : exiT_TIME,
                        'enteR_TIME' : enteR_TIME,
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
                        'dS_STATE' : int(item['dS_STATE'] or 0),
                        'exiT_PLACE' : int(item['exiT_PLACE'] or 0),
                        'duration' : int(item['duration'] or 0),
                        'hP_STATE' : int(item['hP_STATE'] or 0)}
                    )

                except Visit.DoesNotExist:
                    return

        else:
            url = settings.DOSIMETER_API_VISIT
            response = requests.get(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS) )

            visit_json_data = json.dumps(response.json())
            visit_data = json.loads(visit_json_data)

            url = settings.DOSIMETER_API_DEPARTMENT
            response = requests.get(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS) )

            department_json_data = json.dumps(response.json())
            department_data = json.loads(department_json_data)

            url = settings.DOSIMETER_API_PERSON
            response = requests.get(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS) )
            person_json_data = json.dumps(response.json())
            person_data = json.loads(person_json_data)

            #visit_json_data = json.dumps(response.json())
            #visit_data = json.loads(visit_json_data)

            for item in department_data['items']:
                print item
                deparT_ID = int(item['deparT_ID'])
                department,created = Department.objects.update_or_create(

                    id = deparT_ID,
                    defaults={'depnum': item['depnum'],
                                'enable' : int(item['enable'] or 0),
                                'name' : item['name']
                    }
                )


            for item in person_data['items']:
                print item
                persoN_ID = int(item['persoN_ID'])
                try:
                    department = Department.objects.get(id=int(item['department']['rel']))
                    print "DEPARTMENT:" + unicode(department)
                except (Department.DoesNotExist,TypeError):
                    department = None
                birthdate = None
                if item['birthdate'] is not None:
                    birthdate = datetime.strptime(item['birthdate'], "%Y-%m-%dT%H:%M:%S")

                person,created = Person.objects.update_or_create(

                    id = persoN_ID,
                    defaults={'personnum': item['personnum'],
                                'enable' : int(item['enable'] or 0),
                                'firstname' : item['firstname'],
                                'surname' : item['surname'],
                                'title' : item['title'],
                                'visitor' : int(item['visitor'] or 0),
                                'birthdate' : birthdate,
                                'department' : department,
                                'titleafter' : item['titleafter']
                    }
                )

            for item in visit_data['items']:
                try:
                    department = Department.objects.get(id=int(item['department']['rel']))
                    print "DEPARTMENT:" + unicode(department)
                except (Department.DoesNotExist,TypeError):
                    department = None

                try:
                    person = Person.objects.get(id=int(item['person']['rel']))
                    print "PERSON:" + unicode(person)
                except (Person.DoesNotExist,TypeError):
                    person = None

                try:
                    visiT_ID = int(item['visiT_ID'])
                    exiT_TIME = None
                    dP_TIME = None
                    dS_TIME = None
                    dN_TIME = None
                    enteR_TIME = None

                    if item['enteR_TIME'] is not None:
                        enteR_TIME = datetime.strptime(item['enteR_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['dP_TIME'] is not None:
                        dP_TIME = datetime.strptime(item['dP_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['dS_TIME'] is not None:
                        dS_TIME = datetime.strptime(item['dS_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['dN_TIME'] is not None:
                        dN_TIME = datetime.strptime(item['dN_TIME'], "%Y-%m-%dT%H:%M:%S")
                    if item['exiT_TIME'] is not None:
                        exiT_TIME = datetime.strptime(item['exiT_TIME'], "%Y-%m-%dT%H:%M:%S")

                    print(unicode(item['person']['rel']) + " : "+ unicode(item['enteR_TIME']) +" - "+ unicode(enteR_TIME) +" - "+ unicode(exiT_TIME))

                    visit,created = Visit.objects.update_or_create(

                        id = visiT_ID,
                        defaults={'hS_STATE': int(item['hS_STATE'] or 0),
                        'person' : person,
                        'dP_STATE' : int(item['dP_STATE'] or 0),
                        'exiT_TIME' : exiT_TIME,
                        'enteR_TIME' : enteR_TIME,
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
                        'dS_STATE' : int(item['dS_STATE'] or 0),
                        'exiT_PLACE' : int(item['exiT_PLACE'] or 0),
                        'duration' : int(item['duration'] or 0),
                        'hP_STATE' : int(item['hP_STATE'] or 0)}
                    )

                except Visit.DoesNotExist:
                    return
