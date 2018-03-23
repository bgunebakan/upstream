# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import *
from cruds_adminlte.crud import CRUDView
from cruds_adminlte.inline_crud import InlineAjaxCRUD
from .forms import *
from django.utils.translation import ugettext_lazy as _


def index(request):
    tenders = Tender.objects.all()

    tender_types = TenderType.objects.all()

    return render(request, 'procurement/dashboard.html',
        {'tenders':tenders,'tender_types':tender_types})


def details(request,tender_no):
    tender = Tender.objects.get(no=tender_no)

    return render(request, 'procurement/dashboard.html',
        {'tender':tender})


class Tender_end_dateCRUD(CRUDView):
    model = Tender_end_date
    namespace = 'procurement'
    check_login = True
    check_perms = False
    fields =  ['timedate','notify']
    display_fields = ['timedate','notify']

    cruds_url= 'lte'
    views_available=['create', 'list', 'delete', 'update', 'detail']

class Tender_content_AjaxCRUD(InlineAjaxCRUD):
    model = TenderContent
    base_model = Tender
    inline_field = 'tender'
    display_fields = ['name','quantity','unit','price','currency']
    list_fields = ['name','quantity','unit','price','currency']

    add_form = Tender_contentForm
    update_form = Tender_contentForm

    title = _("Tender Contents")

class Tender_end_date_AjaxCRUD(InlineAjaxCRUD):
    model = Tender_end_date
    base_model = Tender
    inline_field = 'tender'
    display_fields = ['timedate','notify']
    list_fields = ['timedate','notify']
    add_form = Tender_end_dateForm
    update_form = Tender_end_dateForm
    #fields = ['timedate',]
    #widgets = {
    #    'timedate': DatePickerWidget(attrs={'format': 'mm/dd/yyyy',
    #                                    'icon': 'fa-calendar'}),
    #}
    title = _("Deadlines")

class TenderCRUD(CRUDView):
    model = Tender
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields = ['name','no','apply_date']
    list_fields = ['name','no','tender_status','tender_type']
    display_fields = ['name','no','tender_type','tender_status','auction_no']

    list_filter = ['tender_status', 'tender_type']

    add_form = TenderForm
    update_form = TenderForm

    inlines = [Tender_end_date_AjaxCRUD,Tender_content_AjaxCRUD]

    search_fields = ['name','no','notes','auction_no']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'
