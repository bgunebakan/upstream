# -*- coding: utf-8 -*-
from inventory.models import *
from django import template
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.models import User
from inventory.tables import LogTable
from django.contrib import messages
from django.db.models import Q

register = template.Library()

@register.simple_tag
def get_item_code(id,request):
    try:
        item = Item.objects.get(id=id)
        print item.code
        item_code = item.item_type.code + "-"+item.owner_code +":"+ item.code
    except ObjectDoesNotExist:
        return "0000"
    except AttributeError:
        item_code = item.owner_code +":"+ item.code
        messages.error(request,'Item Type of ' + unicode(item) + ' is not defined!')
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
def get_items(category_id):

    category_id_list = []
    sub_category_id_list = []
    category_id_list.append(int(category_id))
    sub_category_id_list.append(int(category_id))

    while(True):
        sub_categories = Category.objects.filter(top_category__id__in=sub_category_id_list)
        #print sub_categories
        if sub_categories:
            del sub_category_id_list[:]
            for sub_category in sub_categories:
                #print "CATEGORY: " + unicode(sub_category)
                category_id_list.append(sub_category.id)
                #print "LIST SUB: " + unicode(sub_category_id_list)
                sub_category_id_list.append(sub_category.id)
        else:
            break
    try:
        items = Item.objects.filter(category__id__in=category_id_list)
    except ObjectDoesNotExist:
        return null
    print items
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
def get_categories(top_category_id):
    if top_category_id is "":
        top_category_id = 99 #hardcode for main category
    try:
        categories = Category.objects.filter(top_category__id=top_category_id)
    except ObjectDoesNotExist:
        return null
    return categories

@register.assignment_tag(takes_context=True)
def get_top_category_list(context,top_category_id):
    category_id_list = []
    if top_category_id is "":
        top_category_id = 99 #hardcode for main category

    while(top_category_id is not None):
        top_category = Category.objects.get(id=top_category_id)
        #print top_category
        category_id_list.append(top_category.id)
        if top_category.top_category is None:
            break
        top_category_id = top_category.top_category.id
        #print top_category_id
    #print "-------"
    category_id_list = list(reversed(category_id_list))
    #category_id_list = [99,8,802]
    category_list = Category.objects.filter(id__in=category_id_list)
    category_list = sorted(category_list, key=lambda i: category_id_list.index(i.pk))
    #print category_list
    #print "-------"
    #for cat in category_list:
        #print unicode(cat) + unicode(cat.id)
    return category_list

@register.simple_tag
def get_users():
    try:
        users = User.objects.all()
    except ObjectDoesNotExist:
        return null
    return users

@register.simple_tag
def search(text):
    #text = request.GET.get('q','')
    if text is not "":
        try:
            item_list = Item.objects.filter(Q(name__icontains=text)|Q(brand__icontains=text)|
                                        Q(model__icontains=text)|Q(code__icontains=text)|
                                        Q(notes__icontains=text)).order_by('-created_date')
        except ObjectDoesNotExist:
            return null
        return item_list
    return ""
