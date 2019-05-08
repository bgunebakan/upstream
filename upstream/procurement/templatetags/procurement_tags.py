# -*- coding: utf-8 -*-
from procurement.models import *
from django import template
from django.core.exceptions import ObjectDoesNotExist
#from auditlog.models import LogEntry
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
def get_tenders(request):
    try:
        if request.GET.get("apply_date","") != '' and request.GET.get("tender_status","") != '':
            apply_date = request.GET.get("apply_date","")
            tender_status = request.GET.get("tender_status","")
            tenders = Tender.objects.filter(apply_date__year=int(apply_date),
                                            tender_status__id=int(tender_status)).order_by('-apply_date')
        elif request.GET.get("apply_date","") == '' and request.GET.get("tender_status","") != '':
            tender_status = request.GET.get("tender_status","")
            tenders = Tender.objects.filter(tender_status__id=int(tender_status)).order_by('-apply_date')
        elif request.GET.get("apply_date","") != '' and request.GET.get("tender_status","") == '':
            apply_date = request.GET.get("apply_date","")
            tenders = Tender.objects.filter(apply_date__year=int(apply_date)).order_by('-apply_date')
        else:
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

@register.simple_tag
def get_procurement_config(key):
    try:
        config = Config.objects.get(key=key)
        if config.type == 1: # text
            value = str(config.value)
        elif config.type == 2: # number
            value = int(config.value)
        elif config.type == 3: # array
            value = config.value.split(',')
    except ObjectDoesNotExist:
        return null
    return value
