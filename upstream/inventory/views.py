# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from personnel.models import Personnel
from .forms import *
from django.http import HttpResponseRedirect
from .tables import *
from django_tables2 import RequestConfig

@login_required
def index(request):
    personnel,created = Personnel.objects.get_or_create(user=request.user)
    form = list(ItemForm())

    return render(request, 'inventory/dashboard.html',{'personnel': personnel,'form': form})

@login_required
def new(request,form_type):

    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        if form_type == "location":
            form = LocationForm(request.POST)
        elif form_type == "inventory":
            form = InventoryForm(request.POST)
        elif form_type == "category":
            form = CategoryForm(request.POST)
        elif form_type == "itemtype":
            form = ItemTypeForm(request.POST)
        elif form_type == "item":
            form = ItemForm(request.POST)
        elif form_type == "supplier":
            form = SupplierForm(request.POST)
        else:
            return HttpResponseRedirect('/')
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            form.save()
            # redirect to a new URL:
            return HttpResponseRedirect('#')

    # if a GET (or any other method) we'll create a blank form
    else:
        if form_type == "location":
            form = LocationForm()
        elif form_type == "inventory":
            form = InventoryForm()
        elif form_type == "category":
            form = CategoryForm()
        elif form_type == "itemtype":
            form = ItemTypeForm()
        elif form_type == "item":
            form = ItemForm()
        elif form_type == "supplier":
            form = SupplierForm()
        else:
            return HttpResponseRedirect('/')


    return render(request, 'project/form.html',{'form': form})

@login_required
def item_table(request):
    personnel,created = Personnel.objects.get_or_create(user=request.user)
    #projects = Item.objects.all()

    table = ItemTable(Item.objects.all())
    table_label = 'Malzemeler'

    RequestConfig(request, paginate={'per_page': 20}).configure(table)

    return render(request, 'inventory/table.html',{'table_list': table,'table_label': table_label,'personnel': personnel})
