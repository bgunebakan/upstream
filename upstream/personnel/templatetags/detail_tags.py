# -*- coding: utf-8 -*-

from django import template
from django.core.urlresolvers import resolve
from django.core.exceptions import ObjectDoesNotExist
from personnel.models import *

register = template.Library()

@register.simple_tag
def appname(request):
    if '/personnel/' or '/user/' in request.path :
        return 'Kullanıcı Yönetimi'


@register.simple_tag
def add_active(url,request):
    if url in request.path:
        return ' active '
    else:
        return ''

@register.filter('has_group')
def has_group(user, group_name):

    groups = user.groups.all().values_list('name', flat=True)
    return True if group_name in groups else False
