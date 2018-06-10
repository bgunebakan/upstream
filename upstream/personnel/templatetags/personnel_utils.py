# -*- coding: utf-8 -*-
from django import template
from django.core.urlresolvers import resolve
from django.core.exceptions import ObjectDoesNotExist
from filer.models import Folder
from django.utils import timezone
from django.contrib.auth.models import User
from personnel.models import Personnel
from portunes.models import Action
from collections import defaultdict
from datetime import datetime
from dateutil import parser
register = template.Library()


@register.simple_tag
def get_folder(id):
    id = int(id)
    user = User.objects.get(id=id)
    try:
        folder = Folder.objects.get(owner=id,level=0)
    except ObjectDoesNotExist:
        folder = Folder.objects.create(name=user.username,uploaded_at=timezone.now,
                created_at=timezone.now,modified_at=timezone.now,tree_id=0,owner_id=user.id)
        folder.save()

    return folder

@register.simple_tag
def update_work_hours(request):
    print "update works hours"
    personnel = Personnel.objects.get(user=request.user)
    #workhour calculations
    actions = Action.objects.filter(user=request.user).order_by('-created_date')
        #---------------

    d = defaultdict(list)

    for action in actions:
        key, _ = str(action.created_date).split()
        d[key].append(str(action.created_date))
    workday = 0
    workhour = 0
    data =  [['Tarih', 'Saat']]

    #sort list by date reverse
    date_list = sorted(d, key=lambda x: datetime.strptime(x, '%Y-%m-%d'),reverse=True)
    i=0
    for date in date_list:
        dt_max = parser.parse(max(d[date]))
        dt_min = parser.parse(min(d[date]))
        if i < 10:
            data.append([date,int(dt_max.hour)-int(dt_min.hour)])
        workhour = workhour + int(dt_max.hour)-int(dt_min.hour)
        workday = workday + 1
        i = i + 1

    personnel.total_workday = workday
    personnel.total_workhour = workhour
    personnel.save()
