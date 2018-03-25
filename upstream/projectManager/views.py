# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
from models import *
from django.contrib.auth.decorators import login_required
from .forms import *
from django.conf import settings
import homepage
from upstream.utils import get_settings
from django.http import HttpResponseRedirect
from personnel.models import Personnel
from .tables import *
from django_tables2 import RequestConfig

@login_required
def ganttchart(request):
    try:
        tasks = Task.objects.filter(owner=request.user)
    except Task.DoesNotExist:
        return HttpResponseRedirect('/project/project/list')
    projects = Project.objects.all()
    return render(request, 'project/ganttchart.html',{'tasks': tasks,'projects' : projects})


@login_required
def dashboard(request):
    try:
        personnel = Personnel.objects.get(user=request.user)
    except Personnel.DoesNotExist:
        return HttpResponseRedirect('/personnel/new/personnel')
    projects = Project.objects.all()
    return render(request, 'project/dashboard.html',{'personnel': personnel,'projects' : projects})
