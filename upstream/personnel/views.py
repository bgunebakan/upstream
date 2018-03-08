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




class IndexView(TemplateView):
    template_name = 'index.html'

def handler403(request, exception):
    return render(request, 'errors/403.html', locals())

class UserCRUD(CRUDView):
    model = User
    template_name_base='crud'
    namespace = None
    check_login = True
    check_perms = True
    views_available=['create', 'list', 'update', 'detail']

    fields = ['first_name','last_name', 'username','email']

    list_fields = ['first_name','last_name','username','email']

    list_filter = ['first_name', 'username']

    display_fields = ['first_name', 'last_name','username','email']

    add_form = UserForm
    update_form = UserForm

    search_fields = ['first_name','last_name','username','email']
    split_space_search = True
    paginate_by = 5
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'


class PersonnelCRUD(CRUDView):
    model = Personnel
    template_name_base='crud'  #customer cruds => ccruds
    namespace = None
    check_login = True
    check_perms = True
    views_available=['create', 'list', 'update','delete','detail']

    fields = ['personnel_type','name', 'surname','birth_date', 'country','nat_id','gender','department','title',
    'job','phone_number1','phone_number2','email','address','marital_status','military_situation',
     'drive_licence','health_status','notes','cv','profile_picture','user_file']

    list_fields = ['name','surname','personnel_type','nat_id','created_date']

    list_filter = ['name', 'personnel_type']

    display_fields = ['personnel_type','name', 'surname','birth_date', 'country','nat_id','gender','department','title',
    'job','phone_number1','phone_number2','email','address','marital_status','military_situation',
     'drive_licence','health_status','notes','cv','profile_picture','user_file']

    add_form = PersonnelForm
    update_form = PersonnelForm

    search_fields = ['name','surname','nat_id']
    split_space_search = True
    paginate_by = 5
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

#@group_required(('personnel','admin'), login_url='/personnel/profile/')
@login_required
def dashboard(request,template_name='personnel/personnel/dashboard.html'):

    personnels = Personnel.objects.all()
    total_personnels = 0
    for personnel in personnels:
        total_personnels = total_personnels + 1

    personnel_types = Personnel_type.objects.all()
    form = UserForm(request.POST or None)

    return render(request, template_name,{'personnels': personnels,'personnel_types': personnel_types,'form': form ,'total_personnels': total_personnels })

@login_required
def profile(request,username, template_name='personnel/personnel/profile.html'):

    if request.method=='POST':
        if username == "":
            print "no username:" + unicode(request.user.username)
            personnel = Personnel.objects.get(user=request.user)
        else:
            personnel = Personnel.objects.get(user=request.user)

        form = PersonnelForm(request.POST,request.FILES)

        if form.is_valid():
            form.save()
            # redirect to a new URL:
            messages.success(request, 'Personel Güncellendi.')
            return HttpResponseRedirect('#')

        return HttpResponseRedirect('/personnel/profile/' + personnel.user.username)
    else:

        if username == "":
            print "no username:" + unicode(request.user.username)
            personnel_user = User.objects.get(username=request.user.username)
            personnel,created = Personnel.objects.get_or_create(user=request.user)
        else:
            personnel_user = User.objects.get(username=username)
            personnel,created = Personnel.objects.get_or_create(user=request.user)

        if created:
            personnel.name = personnel_user.first_name
            personnel.surname = personnel_user.last_name
            personnel.email = personnel_user.email
            personnel.save()
            form = PersonnelForm(request.POST or None, instance=personnel)
        else:
            form = PersonnelForm(request.POST or None, instance=personnel)
        #if form.is_valid():
        #    form.save()

            #return HttpResponseRedirect('/personnel/all/')
        return render(request, template_name, {'personnel': personnel,'form':form})
