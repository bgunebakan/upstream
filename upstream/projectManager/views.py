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

@login_required
def index(request):
    personnel,created = Personnel.objects.get_or_create(user=request.user)

    return render(request, 'project/dashboard.html',{'personnel': personnel})

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
