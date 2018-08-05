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
from datetime import datetime,timedelta

class ProjectCRUD(CRUDView):
    model = Project
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = ProjectForm
    update_form = ProjectForm

    views_available=['create', 'list', 'update', 'detail','delete']
    fields = ['name', 'top_project', 'owner']
    list_fields = ['name', 'top_project', 'owner']
    display_fields = ['name', 'top_project', 'owner']

    list_filter = ['top_project','owner']

    search_fields = ['name', 'top_project', 'owner']
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
    fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description','priority' ]
    list_fields = ['name','start_date','end_date','project','inchargeuser','task_type','status']
    display_fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]

    list_filter = ['project','task_type','task_status','inchargeuser']

    search_fields = ['name',  'inchargeuser', 'group','start_date','end_date']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class TasktypeCRUD(CRUDView):
    model = Tasktype

    namespace = None
    check_login = True
    check_perms = False


    views_available=['create','update','delete','list']
    fields = ['name','icon','color']
    list_fields = ['name','icon','color']

    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class StatustypeCRUD(CRUDView):
    model = Statustype
    #template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = False
    #add_form = TaskForm
    #update_form = TaskForm

    views_available=['create','update','delete','list']
    fields = ['name','icon','color']
    list_fields = ['name','icon','color']
    #display_fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]

    #list_filter = ['project','task_type','task_status','inchargeuser']

    #search_fields = ['name',  'inchargeuser', 'group','start_date','end_date']
    #split_space_search = True
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
    list_fields = ['task','user','text']
    #display_fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]

    #list_filter = ['project','task_type','task_status','inchargeuser']

    #search_fields = ['name',  'inchargeuser', 'group','start_date','end_date']
    #split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class ReportCRUD(CRUDView):
    model = Report
    #template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = False
    add_form = ReportForm
    update_form = ReportForm

    views_available=['create','update']
    fields = ['task','user','report','approved']
    #list_fields = ['task','user','text']
    #display_fields = ['name','start_date','end_date','percent_done','top_task','project','inchargeuser','task_type','status','description' ]

    #list_filter = ['project','task_type','task_status','inchargeuser']

    #search_fields = ['name',  'inchargeuser', 'group','start_date','end_date']
    #split_space_search = True
    #paginate_by = 15
    #paginate_position = 'Bottom' # Both | Bottom
    #paginate_template = 'cruds/pagination/enumeration.html'

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

@login_required
def update_task(request, task_id):
    if request.method == 'POST':
        print "POST"
        if 'update_datetime' in request.POST:
            try:
                start_date = request.POST.get("start_date","")
                end_date = request.POST.get("end_date","")
                task = Task.objects.get(id=task_id)
            except ObjectDoesNotExist:
                raise Http404("Task Update Error.")
            task.start_date = datetime.strptime(start_date, '%d/%m/%Y %H:%M')
            task.end_date= datetime.strptime(end_date, '%d/%m/%Y %H:%M')
            task.save()

            return HttpResponseRedirect('/project/task/'+task_id)
        elif 'update_relation' in request.POST:
            related_task_id = int(request.POST.get("related_task",""))
            day = int(request.POST.get("day",""))
            relation = unicode(request.POST.get("relation",""))
            print "-----------" + relation
            if 'FS' in relation :
                task = Task.objects.get(id=task_id)
                related_task = Task.objects.get(id=related_task_id)

                task.start_date = related_task.end_date + timedelta(days=1)
                task.end_date = task.end_date + timedelta(days=day+1)
                task.save()
                messages.success(request, 'Finish to Start Task Relation Updated.')
                return HttpResponseRedirect('/project/task/' + unicode(task_id))
            elif 'SF' in relation :
                task = Task.objects.get(id=task_id)
                related_task = Task.objects.get(id=related_task_id)

                task.start_date = related_task.start_date
                task.end_date = related_task.end_date
                task.save()
                messages.success(request, 'Start to Finish Task Relation Updated.')
                return HttpResponseRedirect('/project/task/' + unicode(task_id))
            else:
                messages.error(request, 'Task Relation cannot Updated!')
                return HttpResponseRedirect('/project/task/'+unicode(task_id))

    elif request.method == 'GET':
        print "GET"
        return HttpResponseRedirect('/project/')
