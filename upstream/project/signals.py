from django.db.models.signals import post_save,post_delete,m2m_changed
from django.dispatch import receiver
import django_bootstrap_calendar
from .models import *
from django.core.mail import send_mail
from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from itertools import chain
import threading
from django.contrib import messages

@receiver(post_save, sender=Task)
def add_log(sender, instance, **kwargs):
    print "add log---------"

    log = Log.objects.create(action="added",description=instance.name,url="/project/task/"+unicode(instance.id)+"/update",
        user=instance.inchargeuser.first())

@receiver(post_save, sender=Report)
def report_approve(sender, instance, **kwargs):
    print "Report Approved"

    if(instance.approved):
        instance.task.finished = True
        instance.task.save()
        #messages.success(request, 'Task Activity Report Approved by Manager.Task automatically closed.')
        ReportnotifyThread(instance).start()

@receiver(post_save, sender=Task)
def toptask_enddate(sender, instance, **kwargs):
    if instance.top_task:
        top_task = Task.objects.get(id=instance.top_task.id)
        if top_task.end_date < instance.end_date:
            top_task.end_date = instance.end_date
            top_task.save()


class TasknotifyThread(threading.Thread):
    def __init__(self,instance, **kwargs):
        self.instance = instance
        super(TasknotifyThread, self).__init__(**kwargs)

    def run(self):
        mailer_list = list(chain(self.instance.project.owner.all(), self.instance.inchargeuser.all()))

        for inchargeuser in mailer_list:

            subject, from_email, to = 'TARLA Internal - Project Management New Task Created', 'info@tarla.org.tr', inchargeuser.email

            html_content = render_to_string('email/task_created.html',
            {'task_name':self.instance,'task_id':self.instance.id,'project_name':self.instance.project,
            'start_date':self.instance.start_date,'end_date':self.instance.end_date,
            'inchargeuser':inchargeuser.get_full_name(),'description':self.instance.description,}) # render with dynamic value

            text_content = strip_tags(html_content) # Strip the html tag. So people can see the pure text at least.

            # create the email, and attach the HTML version as well.
            msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
            msg.attach_alternative(html_content, "text/html")
            print "email sending..."
            msg.send()
            print "email sent."

class ReportnotifyThread(threading.Thread):
    def __init__(self,instance, **kwargs):
        self.instance = instance
        super(ReportnotifyThread, self).__init__(**kwargs)

    def run(self):
        mailer_list = list(chain(self.instance.task.project.owner.all(), self.instance.task.inchargeuser.all()))

        for inchargeuser in mailer_list:

            subject, from_email, to = 'TARLA Internal - Project Management Task Report Approved', 'info@tarla.org.tr', inchargeuser.email

            html_content = render_to_string('email/report_approved.html',
            {'task_name':self.instance.task,'task_id':self.instance.task.id,'project_name':self.instance.task.project,
            'start_date':self.instance.task.start_date,'end_date':self.instance.task.end_date,
            'inchargeuser':inchargeuser.get_full_name(),'description':self.instance.task.description,}) # render with dynamic value

            text_content = strip_tags(html_content) # Strip the html tag. So people can see the pure text at least.

            # create the email, and attach the HTML version as well.
            msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
            msg.attach_alternative(html_content, "text/html")
            print "email sending..."
            msg.send()
            print "email sent."

@receiver(m2m_changed, sender=Task.inchargeuser.through)
def task_email_notify(sender, instance, **kwargs):
    TasknotifyThread(instance).start()
