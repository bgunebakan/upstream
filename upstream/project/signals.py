from django.db.models.signals import post_save,post_delete,m2m_changed
from django.dispatch import receiver
import django_bootstrap_calendar
from .models import *
from django.core.mail import send_mail
from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string
from django.utils.html import strip_tags

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

@receiver(m2m_changed, sender=Task.inchargeuser.through)
def toptask_enddate(sender, instance, **kwargs):

    print instance.inchargeuser.all()

    for inchargeuser in instance.inchargeuser.all():
        print inchargeuser
        subject, from_email, to = 'TARLA Internal - Project Management New Task Created', 'info@tarla.org.tr', inchargeuser.email

        html_content = render_to_string('email/task_created.html',
        {'task_name':instance,'task_id':instance.id,'project_name':instance.project,
        'start_date':instance.start_date,'end_date':instance.end_date,
        'inchargeuser':inchargeuser.get_full_name(),'description':instance.description,}) # render with dynamic value

        text_content = strip_tags(html_content) # Strip the html tag. So people can see the pure text at least.

        # create the email, and attach the HTML version as well.
        msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
        msg.attach_alternative(html_content, "text/html")
        print "email sending..."
        msg.send()
        print "email sent."
