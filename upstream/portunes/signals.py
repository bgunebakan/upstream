from django.contrib.auth.models import User
from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
from .models import Identifier,Permission
from django.utils import timezone

@receiver(post_delete, sender=Identifier)
def delete_permissions(sender, instance, created, **kwargs):
    print("Delete permissions of identifier: " + str(instance))
    permissions =  Permission.objects.filter(identifier=instance)
    for perm in permissions:
        print perm
        perm.delete()
