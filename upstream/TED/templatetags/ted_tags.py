#!/usr/bin/env python
# -*- coding: utf-8 -*-

from personnel.models import Personnel
from TED.models import Person
from django import template
from django.core.exceptions import ObjectDoesNotExist
from TED.tables import *
from django_tables2 import RequestConfig
from django.db.models import Q

register = template.Library()

@register.simple_tag
def search_user(text):
    #text = request.GET.get('q','')
    if text is not "":
        try:
            item_list = Person.objects.filter(Q(firstname__icontains=text)|Q(surname__icontains=text)|
                                        Q(cardnum__icontains=text))

            person_table = PersonTable(item_list, order_by='firstname')
            #RequestConfig(request, paginate={'per_page': 15}).configure(user_table)


        except ObjectDoesNotExist:
            return null
        return person_table
    return ""
