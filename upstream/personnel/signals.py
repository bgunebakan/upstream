from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.contrib.auth.signals import user_logged_in,user_logged_out
from django.dispatch import receiver

from .models import Personnel

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    pass
    #if created:
        #Personnel.objects.create(user=instance)

def save_user_profile(sender, instance, **kwargs):
    print "SAVE---------"
    #instance.profile.save()

@receiver(user_logged_in, sender=User)
def my_login(request, *args, **kwargs):
    print request.user
    try:
        Personnel.objects.get(name=kwargs.get('user'))
        print "exist"
    except Personnel.DoesNotExist:
        #Personnel.objects.create(user=kwargs.get('user'))
        print "not exist"
    print "login---------"
    #return response

@receiver(user_logged_out, sender=User)
def my_logout(request, *args, **kwargs):
    print "logout---------"
    #return logout(request, *args, **kwargs)
