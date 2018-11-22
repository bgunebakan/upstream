# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.utils.translation import ugettext_lazy as _

from cruds_adminlte.crud import CRUDView
from cruds_adminlte.inline_crud import InlineAjaxCRUD

from .models import *

from django.views.generic.base import TemplateView
from django import forms
from cruds_adminlte.filter import FormFilter
from django.contrib.auth.decorators import login_required
from .forms import *
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import permission_required
from django.http import HttpResponse
import requests
from requests_ntlm import HttpNtlmAuth
from django.http import JsonResponse
from django.conf import settings

def count_personnel():
    personnel_types = Personnel_type.objects.all()

    for personnel_type in personnel_types:
        personnels = Personnel.objects.filter(personnel_type=personnel_type)
        personnel_type.total = personnels.count()
        personnel_type.save()

class UserCRUD(CRUDView):
    model = User
    template_name_base='crud'
    namespace = None
    check_login = True
    check_perms = True
    views_available=['create', 'list', 'update','delete']

    fields = ['first_name','last_name', 'username','email','user_permissions','groups']

    list_fields = ['first_name','last_name','username','email']

    list_filter = ['first_name', 'username']

    display_fields = ['first_name', 'last_name','username','email']

    add_form = UserForm
    update_form = UserForm

    search_fields = ['first_name','last_name','username','email']
    split_space_search = True
    paginate_by = 20
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class GroupCRUD(CRUDView):
    model = Group
    #template_name_base='crud'
    namespace = None
    check_login = True
    check_perms = True
    views_available=['create', 'list', 'update','delete']

    fields = ['name','permissions']

    list_fields = ['name']

    #add_form = GForm
    #update_form = UserForm

    search_fields = ['name']
    split_space_search = True
    paginate_by = 20
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class Personnel_file_AjaxCRUD(InlineAjaxCRUD):
    model = Personnel_file
    base_model = Personnel
    inline_field = 'personnel'
    fields = ['name','file']
    display_fields = ['name','file','created_date']
    list_fields = ['name','file','created_date']
    #add_form = Tender_end_dateForm
    #update_form = Tender_end_dateForm
    #fields = ['timedate',]
    #widgets = {
    #    'timedate': DatePickerWidget(attrs={'format': 'mm/dd/yyyy',
    #                                    'icon': 'fa-calendar'}),
    #}
    title = _("User Files")

class PersonnelCRUD(CRUDView):
    model = Personnel
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    views_available=['list', 'update','delete','detail']

    fields = ['user','personnel_type','name', 'surname','birth_date', 'country','nat_id','gender','department','title',
    'job','phone_number1','phone_number2','email','address','marital_status',
     'drive_licence','health_status','notes','cv','profile_picture','user_file','extra_file1','extra_file2','extra_file3']

    list_fields = ['name','surname','personnel_type','nat_id','user','created_date']

    list_filter = ['name', 'personnel_type']

    display_fields = ['personnel_type','name', 'surname','birth_date', 'country','nat_id','gender','department','title',
    'job','phone_number1','phone_number2','email','address','marital_status',
     'drive_licence','health_status','notes','cv','profile_picture','user_file','extra_file1','extra_file2','extra_file3']

    add_form = PersonnelForm
    update_form = PersonnelForm
    #inlines = [Personnel_file_AjaxCRUD]

    search_fields = ['name','surname','nat_id']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class Personnel_typeCRUD(CRUDView):
    model = Personnel_type
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    add_form = Personnel_typeForm
    update_form = Personnel_typeForm

    views_available=['create', 'list', 'update', 'detail']
    fields = ['name','slug','icon','color','total']
    list_fields = ['name']
    display_fields = ['name', 'slug', 'color','icon']

class Annual_leaveCRUD(CRUDView):
    model = Annual_leave
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = False
    #add_form = Annual_leaveForm
    #update_form = Annual_leaveForm
    views_available=['create','update','delete','list']
    fields = ['user','start_date','end_date','approved','notes']
    list_fields = ['user','start_date','end_date']
    display_fields = ['user','start_date','end_date','notes']

@login_required
def rest_request(request):
    url = settings.DOSIMETER_API_PERSON
    #session = requests.session()
    #payload = {'uname': 'Administrator', 'password': 'Heslo0.1.2.3'}
    #response=session.post(url, data=payload,verify=False)
    #response.headers['www-authenticate']
    response = requests.get(url, verify=False, auth=HttpNtlmAuth(
                                settings.DOSIMETER_API_USER,settings.DOSIMETER_API_PASS) )
    #persons = response.json()
    resp = response.json()
    print resp
    return JsonResponse(resp)


@login_required
@permission_required('personnel.can_see_avaliable_personnel', login_url='/personnel/profile/')
def dashboard(request,template_name='personnel/personnel/dashboard.html'):

    count_personnel()
    personnels = Personnel.objects.all()
    total_personnels = 0
    for personnel in personnels:
        total_personnels = total_personnels + 1

    personnel_types = Personnel_type.objects.all()
    form = UserForm(request.POST or None)

    return render(request, template_name,{'personnels': personnels,'personnel_types': personnel_types,'form': form ,'total_personnels': total_personnels })

@login_required
def profile(request, template_name='personnel/personnel/profile.html'):
    print "profile"

    personnel = Personnel.objects.get(user=request.user)


    return HttpResponseRedirect('/personnel/personnel/' + unicode(personnel.id))

def detail(request,user_id, template_name='personnel/personnel/crud/detail.html'):

    personnel = Personnel.objects.get(user__id=user_id)

    return render(request, template_name, {'object': personnel})
    #return HttpResponseRedirect('/personnel/personnel/' + unicode(personnel.id))
