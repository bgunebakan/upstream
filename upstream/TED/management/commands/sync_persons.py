# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from TED.models import Person, Department
from TED.serializers import PersonSerializer,UserPersonSerializer
import json
from django.conf import settings
import requests
from requests_ntlm import HttpNtlmAuth
from django.contrib.auth.models import User

class Command(BaseCommand):
    help = 'Sync persons with TED'

    def handle(self, *args, **options):
        url = settings.DOSIMETER_API_PERSON


        print("fetch all persons")
        response = requests.get(url, verify=False, auth=HttpNtlmAuth(
            settings.DOSIMETER_API_USER, settings.DOSIMETER_API_PASS))
        try:
            resp = response.json()

            users = User.objects.filter(is_active=True)

            for user in users:
                person_id = get_person_id(user,resp['items'])
                if person_id > 0:
                    serializer = UserPersonSerializer(user,context={'person_id': person_id})
                    data = json.dumps(serializer.data)
                    print(data)
                    update_person(person_id,data)
                else:
                    print("-----------------------------")
                    print(user)
                    print("-----------------------------")
                    serializer = UserPersonSerializer(user,context={'person_id': 0})
                    data = json.dumps(serializer.data)
                    create_person(data)
            return

            for item in resp['items']:
                try:
                    print(item['firstname'] + " " + item['surname'] + " - id:" + item['nuM_PER'] + ",nat_id:" + item['personnum']+ ",card_id:" + item['IDCARD'])
                except:
                    pass
        except ValueError as e:
            print("-----")
            print(e)
            print(response)
            print(response.content)
        return


        persons = Person.objects.all()
        for person in persons:
            print "DEPART: " + unicode(person)
            serializer = PersonSerializer(person)
            # if serializer.is_valid():
            data = json.dumps(serializer.data)
            # else:
            #    print serializer
            #    return
            # data = {
            #    "deparT_ID": "777",
            #    "enable": "1",
            #    "name": "Tenant create",
            #    "depnum": "MINIMAL"
            # }
            # data = json.dumps(data)
            print "DATA: " + unicode(data)

            headers = {'Content-Type': 'application/json'}
            response = requests.post(url, verify=False, auth=HttpNtlmAuth(
                settings.DOSIMETER_API_USER, settings.DOSIMETER_API_PASS),
                                     data=data, headers=headers)
            print "RESPONSE: " + unicode(response) + " - " + unicode(response.reason)
            print response.content


def get_person_id(user,items):
    for item in items:
        if item['nuM_PER']:
            if int(item['nuM_PER']) == user.id:
                return item['persoN_ID']

    #try with name surname
    for item in items:
        if item['firstname'] and item['surname']:
            if (item['firstname'] == user.first_name) and (item['surname'] == user.last_name):
                return item['persoN_ID']
    return 0

def update_person(id,json_data):
    url = settings.DOSIMETER_API_PERSON + "/" +str(id)

    headers = {'Content-Type': 'application/json'}
    response = requests.put(url, verify=False, auth=HttpNtlmAuth(
        settings.DOSIMETER_API_USER, settings.DOSIMETER_API_PASS),
                             data=json_data, headers=headers)

    if response.reason != "OK":
        print "RESPONSE: " + unicode(response) + " - " + unicode(response.reason)
        print response.content

def create_person(json_data):
    url = settings.DOSIMETER_API_PERSON

    headers = {'Content-Type': 'application/json'}
    response = requests.post(url, verify=False, auth=HttpNtlmAuth(
        settings.DOSIMETER_API_USER, settings.DOSIMETER_API_PASS),
                             data=json_data, headers=headers)

    if response.reason != "OK":
        print "RESPONSE: " + unicode(response) + " - " + unicode(response.reason)
        print response.content
