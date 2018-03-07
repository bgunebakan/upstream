# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.contrib.auth import models
from .models import Personnel
from .forms import *
import tarlaguard.models
import tarlaguard.tables
from collections import defaultdict
from graphos.sources.simple import SimpleDataSource
from graphos.renderers import gchart, yui, flot, morris, highcharts, c3js
from django_tables2 import RequestConfig
from django.contrib import messages
from django.http import HttpResponseRedirect
from datetime import datetime, timedelta
from django.db.models import Sum
from dateutil import parser
from django.core.exceptions import ObjectDoesNotExist
from django.http import Http404

@login_required
def index(request):
    return HttpResponseRedirect('/personnel/profile/')

@login_required
def user_detail(request):

    personnel,created = Personnel.objects.get_or_create(user=request.user)

    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = PersonnelForm(request.POST)

        # check whether it's valid:
        if form.is_valid():
            new_form = form.save(commit=False)
            new_form.save()
            # redirect to a new URL:
            return HttpResponseRedirect('#')

    # if a GET (or any other method) we'll create a blank form
    else:
        form = PersonnelForm(request.POST or None, instance=personnel)

    return render(request, 'personnel/profile.html',{'personnel': personnel,'form':form })


@login_required
def profile(request,username, template_name='personnel/profile.html'):


    if request.method=='POST':
        if username == "":
            print "no username"
            personnel = Personnel.objects.get(user=request.user)
        else:
            personnel = Personnel.objects.get(user__username=username)
        if personnel.identifier:
            if personnel.identifier.identifier_type == 1:
                form = PersonnelForm(request.POST,request.FILES, instance=personnel)
            elif personnel.identifier.identifier_type == 2:
                form = GuestForm(request.POST, instance=personnel)
        else:
            form = PersonnelForm(request.POST,request.FILES, instance=personnel)
        if form.is_valid():
            form.save()
            messages.success(request, 'Personel Güncellendi.')
        return HttpResponseRedirect('/personnel/profile/' + request.user.username)
    else:
        try:
            if username == "":
                print "no username" + unicode(request.user.username)
                personnel = Personnel.objects.get(user=request.user)
                actions = tarlaguard.models.Action.objects.filter(user=request.user).order_by('-created_date')
            else:
                personnel = Personnel.objects.get(user__username=username)
                actions = tarlaguard.models.Action.objects.filter(user__username=username).order_by('-created_date')
        except ObjectDoesNotExist:
            messages.error(request, username + ' TC kimlik nolu Kullanici Bulunamadi!')
            return HttpResponseRedirect('/project/')
        #workhour calculations

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

        # DataSource object
        data_source = SimpleDataSource(data=data)

        # Chart object
        chart = gchart.ColumnChart(data_source,options={'title': 'Son 10 gün çalışma saati'})

        if personnel.identifier:
            if personnel.identifier.identifier_type == 1:
                form = PersonnelForm(request.POST or None, instance=personnel)
            elif personnel.identifier.identifier_type == 2:
                form = GuestForm(request.POST or None, instance=personnel)
        else:
            form = PersonnelForm(request.POST or None, instance=personnel)


        table = tarlaguard.tables.ActionTable(tarlaguard.models.Action.objects.filter(user__username=personnel.user.username), order_by='-created_date')
        RequestConfig(request, paginate={'per_page': 15}).configure(table)

        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/personnel/all/')
        return render(request, template_name, {'chart': chart,'table_list': table,'personnel': personnel,'form':form,'form_label':"Kart Tipi Güncelleme",'user_menu':'active'})

@login_required
def new_user(request,user_type):
    #user_type = "personnel"
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        if user_type == "personnel":
            form = ProjectForm(request.POST)
        elif user_type == "guest":
            form = TaskForm(request.POST)
        else:
            raise Http404("Aradığınız Sayfa Bulunamadı!")

        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            form.save()
            # redirect to a new URL:
            return HttpResponseRedirect('#')

    # if a GET (or any other method) we'll create a blank form
    else:
        if user_type == "personnel":
            form = PersonnelForm()
        elif user_type == "guest":
            form = GuestForm()
        else:
            raise Http404("Aradığınız Sayfa Bulunamadı!")



    return render(request, 'personnel/form.html',{'form': form})
