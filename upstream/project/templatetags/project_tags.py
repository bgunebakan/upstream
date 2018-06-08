# -*- coding: utf-8 -*-
from django import template
from django.core.urlresolvers import resolve
from project.models import Project,Task,Log
from django.core.exceptions import ObjectDoesNotExist

register = template.Library()


@register.simple_tag
def project_logs(count):
    try:
        logs = Log.objects.all().order_by('-timedate')[:count:1]
    except ObjectDoesNotExist:
        return "<b>Log Bulunamadı!</b>"
	print "log bulunamadı"
    return logs

@register.simple_tag
def get_task(id):
    id = int(id)
    task = Task.objects.get(id=id)
    return task

@register.simple_tag
def projects():
    projects = Project.objects.all()
    context = {'projects': projects}
    return context

@register.simple_tag
def tasks(count,request):
    tasks = Task.objects.filter(inchargeuser=request.user).order_by('-start_date')[:count:1]
    return tasks

@register.inclusion_tag('project/dashboard.html')
def my_custom_tag():
    projects = Project.objects.all()
    return {'projects' : projects}

@register.simple_tag
def version():
    setting = homepage.models.Setting.objects.get(name='version')

    return setting.value
@register.simple_tag
def appname(request):
    return resolve(request.path).app_name

@register.simple_tag
def add_active(url,request):
    if url in request.path:
        return ' active '
    else:
        return ''
