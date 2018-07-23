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

from cruds_adminlte.crud import CRUDView
from cruds_adminlte.inline_crud import InlineAjaxCRUD
from cruds_adminlte.filter import FormFilter
from django.contrib import messages

class ProjectCRUD(CRUDView):
    model = Project
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = ProjectForm
    update_form = ProjectForm

    views_available=['create', 'list', 'update', 'detail']
    fields = ['name', 'top_project', 'owner', 'group']
    list_fields = ['name', 'top_project', 'owner', 'group']
    display_fields = ['name', 'top_project', 'owner', 'group']

    list_filter = ['top_project','owner']

    search_fields = ['name', 'top_project', 'owner', 'group']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class TaskCRUD(CRUDView):
    model = Task
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = False
    add_form = TaskForm
    update_form = TaskForm

    views_available=['create', 'list', 'update','detail','delete']
    fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]
    list_fields = ['name','start_date','end_date','project','inchargeuser','task_type','status']
    display_fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]

    list_filter = ['project','task_type','task_status','inchargeuser']

    search_fields = ['name',  'inchargeuser', 'group','start_date','end_date']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class CommentCRUD(CRUDView):
    model = Comment
    #template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = False
    #add_form = TaskForm
    #update_form = TaskForm

    views_available=['create','update','delete','list']
    fields = ['task','user','text']
    success_url = "/project/"
    list_fields = ['task','user','text']
    #display_fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]

    #list_filter = ['project','task_type','task_status','inchargeuser']

    #search_fields = ['name',  'inchargeuser', 'group','start_date','end_date']
    #split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

@login_required
def ganttchart(request):
    try:
        tasks = Task.objects.filter(inchargeuser=request.user)
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
