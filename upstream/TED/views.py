# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
import json
from django.http import HttpResponse
from django.http import JsonResponse
from django.conf import settings
from .models import Person,Department,Visit
from collections import namedtuple
import datetime

@login_required
def rest_request(request):
    test = True
    if request.method == "GET":
        if test is True:
            json_data = open('/opt/upstream/media/dump_json/person.json','r').read()
            #data1 = json.load(json_data)
            #x = json.loads(json_data, object_hook=lambda d: namedtuple('items', d.keys())(*d.values()))
            data = json.loads(json_data)
            for item in data['items']:
                if item['department'] is not None:
                    print(unicode(item['department']['rel']) + " : "+item['firstname'] +" - "+ item['surname'])
                    try:
                        department = Department.objects.get(id=item['department']['rel'])
                    except Department.DoesNotExist:
                        department = None
                else:
                    print(unicode(None) + " : "+item['firstname'] +" - "+ item['surname'])
                    #item['department']['rel'] = 0
                try:
                    person = Person.objects.get(id=item['persoN_ID'])
                    person.id=item['persoN_ID']
                    person.enable = item['enable']
                    person.surname = item['surname']
                    person.firstname = item['firstname']
                    person.title = item['title']
                    person.visitor = item['visitor']
                    if item['birthdate'] is not None:
                        person.birthdate = datetime.datetime.strptime(item['birthdate'], "%Y-%m-%dT00:00:00").date()
                    person.personnum = item['personnum']
                    #person.cardnum = item['cardnum']
                    person.department = department
                    person.titleafter = item['titleafter']
                    person.save()
                except Person.DoesNotExist:
                    Person.objects.create(id=item['persoN_ID'],
                                        enable = item['enable'],
                                        surname = item['surname'],
                                        firstname = item['firstname'],
                                        title = item['title'],
                                        visitor = item['visitor'],
                                        birthdate = datetime.datetime.strptime(item['birthdate'], "%Y-%m-%dT00:00:00").date(),
                                        personnum = item['personnum'],
                                        #cardnum = item['cardnum'],
                                        department = department,
                                        titleafter = item['titleafter'])


            return HttpResponse(data['items'])
            #return JsonResponse(data1)
        else:
            url = settings.DOSIMETER_API_PERSON
            #session = requests.session()
            #payload = {'uname': 'Administrator', 'password': 'Heslo0.1.2.3'}
            #response=session.post(url, data=payload,verify=False)
            #response.headers['www-authenticate']
            response = requests.get(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS) )
                                #persons = response.json()
            resp = response.json()
            print resp
            return JsonResponse(resp)
    if request.method == "POST":
        return HttpResponse("POST")
