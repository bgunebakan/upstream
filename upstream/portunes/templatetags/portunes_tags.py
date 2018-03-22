#!/usr/bin/env python
# -*- coding: utf-8 -*-

from personnel.models import Personnel
from django import template
from django.core.exceptions import ObjectDoesNotExist
from auditlog.models import LogEntry
from django.contrib.auth.models import User
from portunes.tables import *
from django_tables2 import RequestConfig

register = template.Library()


@register.simple_tag
def get_personnel(request):
    try:
        personnel = Personnel.objects.get(user=request.user)
    except ObjectDoesNotExist:
        return ""
    return personnel

@register.simple_tag
def get_table(request,object):

    table = ActionTable(Action.objects.filter(door__entrance__id=object), order_by='-created_date')
    RequestConfig(request, paginate={'per_page': 15}).configure(table)
    print table
    return table

@register.simple_tag
def select_personnel(id):
    try:
        personnel = Personnel.objects.get(id=id)
    except ObjectDoesNotExist:
        return ""
    return personnel

@register.simple_tag
def last_personnels(count):
    try:
        personnels = Personnel.objects.all().order_by('-created_date')[:count:1]
    except ObjectDoesNotExist:
        return "Personnel bulunamadı!"
    return personnels
