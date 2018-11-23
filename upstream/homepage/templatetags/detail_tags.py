# -*- coding: utf-8 -*-

from django import template
from django.core.urlresolvers import resolve
from django.core.exceptions import ObjectDoesNotExist
from personnel.models import *
from constance import config
register = template.Library()

@register.simple_tag
def appname(request):
    print request.path
    if '/procurement/' in request.path :
        return 'Procurement'
    elif '/project/' in request.path :
        return 'Project'
    elif '/portunes/' in request.path :
        return 'Access Control'
    elif '/inventory/' in request.path :
        return 'Inventory'
    elif '/personnel/' in request.path or '/auth/' in request.path :
        return 'User Management'
    else:
        return config.app_name


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
