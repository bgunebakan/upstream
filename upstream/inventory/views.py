# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from personnel.models import Personnel

@login_required
def index(request):
    personnel,created = Personnel.objects.get_or_create(user=request.user)

    return render(request, 'inventory/dashboard.html',{'personnel': personnel})
