# -*- coding: utf-8 -*-
from inventory.models import *
from django import template
from django.core.exceptions import ObjectDoesNotExist
from auditlog.models import LogEntry
from django.contrib.auth.models import User
from inventory.tables import LogTable

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
def get_itemtypes():
    try:
        item_types = ItemType.objects.all()
    except ObjectDoesNotExist:
        return null
    return item_types

@register.simple_tag
def get_items():
    try:
        items = Item.objects.all()
    except ObjectDoesNotExist:
        return null
    return items

@register.simple_tag
def get_users():
    try:
        users = User.objects.all()
    except ObjectDoesNotExist:
        return null
    return users
