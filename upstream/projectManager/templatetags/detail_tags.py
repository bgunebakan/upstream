# -*- coding: utf-8 -*-

from django import template
import homepage
from django.core.urlresolvers import resolve
from django.core.exceptions import ObjectDoesNotExist

register = template.Library()

@register.simple_tag
def title():
    try:
        setting = homepage.models.Setting.objects.get(name='title')
    except ObjectDoesNotExist:
        return "Upstream"
    return setting.value


@register.simple_tag
def version():
    setting = homepage.models.Setting.objects.get(name='version')

    return setting.value

@register.simple_tag
def hide_sidebar():
    try:
        setting = homepage.models.Setting.objects.get(name='hide_sidebar')
    except ObjectDoesNotExist:
        return "False"
    if setting.value == 'True':
        return 'sidebar-collapse'


@register.simple_tag
def appname(request):
    if '/project/' in request.path:
        return 'Proje Yönetimi'
    elif '/personnel/' in request.path :
        return 'Personel Yönetimi'
    elif '/inventory/' in request.path:
        return 'Stok Takip'

@register.simple_tag
def add_active(url,request):
    if url in request.path:
        return ' active '
    else:
        return ''
