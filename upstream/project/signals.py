from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
import django_bootstrap_calendar
from .models import *

@receiver(post_save, sender=Task)
def add_log(sender, instance, **kwargs):
    print "add log---------"

    log = Log.objects.create(action="added",description=instance.name,url="/project/task/"+unicode(instance.id)+"/update",
        user=instance.inchargeuser.first())

@receiver(post_save, sender=Task)
def toptask_enddate(sender, instance, **kwargs):
    if instance.top_task:
        top_task = Task.objects.get(id=instance.top_task.id)
        if top_task.end_date < instance.end_date:
            top_task.end_date = instance.end_date
            top_task.save()
