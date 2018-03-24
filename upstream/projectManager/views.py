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
def index(request):
    try:
        personnel = Personnel.objects.get(user=request.user)
    except Personnel.DoesNotExist:
        return HttpResponseRedirect('/personnel/new/personnel')
    projects = Project.objects.all()
    return render(request, 'project/dashboard.html',{'personnel': personnel,'projects' : projects})

@login_required
def detail_project(request,project_id):
    personnel,created = Personnel.objects.get_or_create(user=request.user)
    project = Project.objects.get(id=int(project_id))
    #form = ProjectForm(request.POST,instance=project)
    form = ProjectForm(request.POST or None, instance=project)

    return render(request, 'project/form.html',{'personnel': personnel,'form' : form})


@login_required
def projects_table(request):
    personnel,created = Personnel.objects.get_or_create(user=request.user)
    projects = Project.objects.all()

    table = ProjectTable(Project.objects.all())
    table_label = 'Projeler'

    RequestConfig(request, paginate={'per_page': 20}).configure(table)

    return render(request, 'project/table.html',{'table_list': table,'table_label': table_label,'personnel': personnel,'projects' : projects})

@login_required
def new_project(request,form_type):

    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        if form_type == "project":
            form = ProjectForm(request.POST)
        elif form_type == "task":
            form = TaskForm(request.POST)
        elif form_type == "tasktype":
            form = TasktypeForm(request.POST)
        elif form_type == "statustype":
            form = StatustypeForm(request.POST)
        elif form_type == "comment":
            form = CommentForm(request.POST)

        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            form.save()
            # redirect to a new URL:
            return HttpResponseRedirect('#')

    # if a GET (or any other method) we'll create a blank form
    else:
        if form_type == "project":
            form = ProjectForm()
        elif form_type == "task":
            form = TaskForm()
        elif form_type == "tasktype":
            form = TasktypeForm()
        elif form_type == "statustype":
            form = StatustypeForm()
        elif form_type == "comment":
            form = CommentForm()


    return render(request, 'project/form.html',{'form': form})
