from django.contrib.auth.models import User
from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
from django.utils import timezone
from django.conf import settings
from TED.models import Person
from TED.serializers import PersonSerializer
import json
import requests
from requests_ntlm import HttpNtlmAuth

@receiver(post_save, sender=Person)
def create_user(sender, instance, created, **kwargs):
    print("Create user on TED Server " + str(instance))
    if created:
        url = settings.DOSIMETER_API_PERSON

        serializer = PersonSerializer(instance)
        data = json.dumps(serializer.data)

        print(".................")
        print(data)
        print(".................")
        headers = {'Content-Type': 'application/json'}

        response = requests.post(url, verify=False, auth=HttpNtlmAuth(
                            settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS),
                            data = data, headers=headers)
        try:
            resp = response.json()
            print resp
            instance.persoN_ID = int(resp['persoN_ID'])
            instance.save()
        except ValueError as e:
            print(e)
            print("-----")
            print(response)
            print(response.content)
        return
