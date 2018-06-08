# -*- coding: utf-8 -*-
from procurement.models import *
from django import template
from django.core.exceptions import ObjectDoesNotExist
from auditlog.models import LogEntry
from django.contrib.auth.models import User

register = template.Library()

@register.simple_tag
def get_logs(id):
    try:
        logs = Log.objects.filter(item__id=id).order_by('-timedate')
        table = LogTable(logs)
    except ObjectDoesNotExist:
        return table
    return table

@register.simple_tag
def get_tendertypes():
    try:
        tender_types = TenderType.objects.all()
    except ObjectDoesNotExist:
        return null
    return tender_types

@register.simple_tag
def get_tenders():
    try:
        tenders = Tender.objects.all().order_by('-apply_date')
    except ObjectDoesNotExist:
        return null
    return tenders

@register.simple_tag
def get_users():
    try:
        users = User.objects.all()
    except ObjectDoesNotExist:
        return null
    return users
