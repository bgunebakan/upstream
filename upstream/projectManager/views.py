# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
from models import *
from django.contrib.auth.decorators import login_required
from .forms import ProjectForm
from django.conf import settings
import homepage
from django.forms.models import model_to_dict
from upstream.utils import get_settings

@login_required
def index(request):
    
    return render(request, 'clear/base.html')
