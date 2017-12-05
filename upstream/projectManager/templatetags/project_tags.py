from django import template
from django.core.urlresolvers import resolve
from projectManager.models import Project

register = template.Library()

@register.simple_tag
def projects():
    projects = Project.objects.all()
    context = {'projects': projects}
    return context

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
