#!/usr/bin/env python
# -*- coding: utf-8 -*-

from personnel.models import Personnel
from portunes.models import Door,Permission
from django import template
from django.core.exceptions import ObjectDoesNotExist
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

@register.simple_tag
def doors(controller_id):
    try:
        doors = Door.objects.filter(entrance__id=controller_id).order_by('entrance_controller_pin')
    except ObjectDoesNotExist:
        return "Door does not Exist!"
    return doors

@register.simple_tag
def door_permission_users(door_id):
    try:
        permissions = Permission.objects.filter(door__id=door_id).order_by('identifier')
        for perm in permissions:
            print perm.identifier.user
    except ObjectDoesNotExist:
        print "Door does not Exist!"
    return permissions

@register.simple_tag
def all_users():
    try:
        users = User.objects.all().order_by('first_name')
    except ObjectDoesNotExist:
        return "User does not Exist!"
    return users

@register.simple_tag
def get_all_controllers():
    try:
        controllers = Controller.objects.filter(health=True).order_by('name')
    except ObjectDoesNotExist:
        return "Controller does not Exist!"
    return controllers

@register.simple_tag
def get_all_doors():
    try:
        doors = Door.objects.all().order_by('entrance_controller_pin')
    except ObjectDoesNotExist:
        return "Door does not Exist!"
    return doors

@register.simple_tag
def get_group_doors(id):
    if id is not None:
        try:
            group_doors = DoorGroup.objects.filter(id=id)
            for door in group_doors:
                print door.doors.filter(doorgroup=id)
        except ObjectDoesNotExist:
            print "Door does not Exist!"
        return door.doors.filter(doorgroup=id)
    else:
        return None

@register.simple_tag
def search_identifier(text):
    #text = request.GET.get('q','')
    if text is not "":
        try:
            item_list = Identifier.objects.filter(Q(name__icontains=text)|Q(user__username__icontains=text)|
                                        Q(key__icontains=text)).order_by('-created_date')
        except ObjectDoesNotExist:
            return null
        return item_list
    return ""
