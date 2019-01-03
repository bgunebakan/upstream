from django.contrib.auth.models import User,Permission
from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
from filer.models import Folder
from .models import Personnel,Personnel_type
from django.utils import timezone

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        personnel = Personnel.objects.create(user=instance,nat_id=instance.id)
        personnel.name = instance.first_name
        personnel.surname = instance.last_name
        personnel.username = instance.username
        personnel.email = instance.email
        permissions =  Permission.objects.all()
        for perm in permissions:
            print perm.codename

        permission = Permission.objects.get(codename='view_personnel')
        instance.user_permissions.add(permission)

@receiver(post_save, sender=User)
def create_user_folder(sender, instance, created, **kwargs):
    if created:
        user_folder = Folder.objects.create(name=instance.username,uploaded_at=timezone.now,
        created_at=timezone.now,modified_at=timezone.now,tree_id=0,owner_id=instance.id)
        user_folder.save()


@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.personnel.save()
    #instance.save()

@receiver(post_save, sender=Personnel)
def count_personnel(sender, instance, created, **kwargs):
    personnel_types = Personnel_type.objects.all()

    for personnel_type in personnel_types:
        personnels = Personnel.objects.filter(personnel_type=personnel_type)
        personnel_type.total = personnels.count()
        personnel_type.save()

@receiver(post_delete, sender=Personnel)
def count_personnel(sender, instance, **kwargs):
    personnel_types = Personnel_type.objects.all()

    for personnel_type in personnel_types:
        personnels = Personnel.objects.filter(personnel_type=personnel_type)
        personnel_type.total = personnels.count()
        personnel_type.save()

@receiver(post_save, sender=Personnel)
def profile_picture_check(sender, instance, created, **kwargs):
    if not instance.profile_picture:
        instance.profile_picture = instance._meta.get_field('profile_picture').get_default()
        instance.save()
