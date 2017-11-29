# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.contrib.auth import models
from .models import Personnel
from .forms import *

@login_required
def profile(request):

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

    return render(request, 'personnel/profile.html',{'personnel': personnel,'form':form})
