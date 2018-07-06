# -*- coding: utf-8 -*-
from inventory.models import *
from django import template
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.models import User
from inventory.tables import LogTable

register = template.Library()

@register.simple_tag
def get_item_code(id):
    try:
        item = Item.objects.get(id=id)
        item_code = item.item_type.code + "-"+item.owner_code +":"+ item.category.code + item.code
    except ObjectDoesNotExist:
        return "0000"
    return item_code

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
def get_category_items(category_id):
    if category_id is "":
        category_id = request.GET.get('top_category','')
    try:
        items = Item.objects.filter(category__id=category_id)
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
