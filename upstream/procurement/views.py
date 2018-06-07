# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import *
from cruds_adminlte.crud import CRUDView
from cruds_adminlte.inline_crud import InlineAjaxCRUD
from .forms import *
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.decorators import login_required
#from django.core.mail import send_mail

@login_required
def index(request):
    tenders = Tender.objects.all().order_by('-apply_date')
    #print "sending email"
    #send_mail('subject', 'body of the message', 'info@tarla.org.tr', ['bilaltonga@gmail.com',])
    #print "sended"
    tender_types = TenderType.objects.all()

    return render(request, 'procurement/dashboard.html',
        {'tenders':tenders,'tender_types':tender_types})


def callfortender(request):
    tenders = Tender.objects.all().order_by('-apply_date')

    tender_types = TenderType.objects.all()

    return render(request, 'procurement/callfortender.html',
        {'tenders':tenders,'tender_types':tender_types})


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

    #add_form = Tender_contentForm
    #update_form = Tender_contentForm

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

class Tender_offer_AjaxCRUD(InlineAjaxCRUD):
    model = TenderOffer
    base_model = Tender
    inline_field = 'tender'
    fields = ['firm','price','currency']
    display_fields = ['firm','price','currency','proposal_form']
    list_fields = ['firm','price','currency']

    #add_form = TenderOfferForm
    #update_form = TenderOfferForm

    title = _("Tender Offers")

class TenderCRUD(CRUDView):
    model = Tender
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields = ['name','no','apply_date']
    list_fields = ['name','no','tender_status','tender_type','apply_date']
    display_fields = ['name','no','tender_type','tender_status','auction_no']

    list_filter = ['tender_type','tender_status']
    views_available=['create', 'list', 'delete', 'update']

    add_form = TenderForm
    update_form = TenderForm

    inlines = [Tender_end_date_AjaxCRUD,Tender_offer_AjaxCRUD,Tender_content_AjaxCRUD]

    search_fields = ['name','no','notes','auction_no']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class TenderTypeCRUD(CRUDView):
    model = TenderType

    check_login = True
    check_perms = True
    fields = ['name','code','description']
    list_fields = ['name','code']
    display_fields = ['name','code','description']

    views_available=['create', 'list', 'delete', 'update']

class TenderStatusCRUD(CRUDView):
    model = TenderStatus

    check_login = True
    check_perms = True
    fields = ['name','bgcolor','description']
    list_fields = ['name']
    display_fields = ['name','bgcolor','description']

    views_available=['create', 'list', 'delete', 'update']

class TravellingExpenseCRUD(CRUDView):
    model = TravellingExpense
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields = ['name','surname','institution','start_date','end_date','location','price','currency','payment_date','notes']
    list_fields = ['name','surname','institution','start_date','end_date','price','currency','payment_date']
    display_fields = ['name','surname','institution','start_date','end_date','location','price','currency','payment_date','notes']

    views_available=['create', 'list', 'delete', 'update']

    list_filter = ['name', 'institution']

    add_form = TravellingExpenseForm
    update_form = TravellingExpenseForm

    search_fields = ['name','surname','institution','location','notes']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'
