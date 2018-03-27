from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
import django_bootstrap_calendar
from .models import *

@receiver(post_save, sender=Task)
def create_task(sender, instance, created, **kwargs):
    """Create a matching profile whenever a user object is created."""
    if created:
        calenderevent, new = django_bootstrap_calendar.models.CalendarEvent.objects.get_or_create(title=instance.name,
        start=instance.start_date,end=instance.end_date,url="detail/task/"+str(instance.id))

@receiver(post_delete, sender=Task)
def delete_task(sender, instance, **kwargs):
    """Create a matching profile whenever a user object is created."""
    #if deleted:
    calenderevent, new = django_bootstrap_calendar.models.CalendarEvent.objects.get_or_create(title=instance.name,
        start=instance.start_date,end=instance.end_date)
    calenderevent.delete()