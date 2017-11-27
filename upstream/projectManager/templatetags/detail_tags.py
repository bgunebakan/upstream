from django import template
import homepage
from django.core.urlresolvers import resolve

register = template.Library()

@register.simple_tag
def title():
    setting = homepage.models.Setting.objects.get(name='title')

    return setting.value

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
