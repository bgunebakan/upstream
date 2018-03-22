# -*- coding: utf-8 -*-

from django import template
import homepage
from django.core.urlresolvers import resolve
from django.core.exceptions import ObjectDoesNotExist

register = template.Library()

@register.simple_tag
def appname(request):
    if '/project/' in request.path:
        return 'Proje Yönetimi'
    else:
        return 'Web services'

@register.simple_tag
def add_active(url,request):
    if url in request.path:
        return ' active '
    else:
        return ''
