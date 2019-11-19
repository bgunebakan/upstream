# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.template.loader import render_to_string
from django.http import HttpResponse
from .models import *
from cruds_adminlte.crud import CRUDView
from cruds_adminlte.inline_crud import InlineAjaxCRUD
from .forms import *
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.decorators import login_required
# from django.core.mail import send_mail
from django.http import HttpResponseRedirect
from weasyprint import HTML
import tempfile


@login_required
def index(request):
    return HttpResponseRedirect('/procurement/tender/list')


def callfortender(request):
    tenders = Tender.objects.filter(published=True).order_by('-apply_date')

    tender_types = TenderType.objects.all()

    return render(request, 'procurement/callfortender.html',
                  {'tenders': tenders, 'tender_types': tender_types})


class Tender_end_dateCRUD(CRUDView):
    model = Tender_end_date
    namespace = 'procurement'
    check_login = True
    check_perms = False
    fields = ['timedate', 'notify']
    display_fields = ['timedate', 'notify']

    cruds_url = 'lte'
    views_available = ['create', 'list', 'delete', 'update', 'detail']


class Tender_content_AjaxCRUD(InlineAjaxCRUD):
    model = TenderContent
    base_model = Tender
    inline_field = 'tender'
    fields = ['name', 'quantity', 'unit', 'price', 'currency']

    display_fields = ['name', 'quantity', 'unit', 'price', 'currency']
    list_fields = ['name', 'quantity', 'unit', 'price', 'currency']

    # add_form = Tender_contentForm
    # update_form = Tender_contentForm

    title = _("Tender Contents")


class Tender_end_date_AjaxCRUD(InlineAjaxCRUD):
    model = Tender_end_date
    base_model = Tender
    inline_field = 'tender'
    display_fields = ['timedate', 'notify']
    list_fields = ['timedate', 'notify']
    add_form = Tender_end_dateForm
    update_form = Tender_end_dateForm
    # fields = ['timedate',]
    # widgets = {
    #    'timedate': DatePickerWidget(attrs={'format': 'mm/dd/yyyy',
    #                                    'icon': 'fa-calendar'}),
    # }
    title = _("Deadlines")


class Tender_offer_AjaxCRUD(InlineAjaxCRUD):
    model = TenderOffer
    base_model = Tender
    inline_field = 'tender'
    fields = ['firm', 'price', 'currency', 'vat']
    display_fields = ['firm', 'price', 'currency', 'proposal_form']
    list_fields = ['firm', 'price', 'currency', 'vat']

    # add_form = TenderOfferForm
    # update_form = TenderOfferForm

    title = _("Tender Offers")


class TenderCRUD(CRUDView):
    model = Tender
    template_name_base = 'crud'
    check_login = True
    check_perms = True
    fields = ['name', 'no', 'tender_type', 'approximate_price', 'currency', 'tender_status', 'notes', 'specification',
              'apply_date', 'auction_date', 'auction_time', 'auction_price', 'auction_no', 'auction_location',
              'supplier', 'user', 'bap_staff', 'contract_date', 'published', 'publish_notes', 'publish_status']

    list_fields = ['name', 'no', 'tender_status', 'tender_type', 'apply_date']
    display_fields = ['name', 'no', 'tender_type', 'tender_status', 'auction_no']

    list_filter = ['tender_status', 'apply_date']
    views_available = ['create', 'list', 'delete', 'update']

    add_form = Tender_Form
    update_form = Tender_Form

    inlines = [Tender_end_date_AjaxCRUD, Tender_offer_AjaxCRUD]  # Tender_content_AjaxCRUD

    # search_fields = ['name','no','auction_no']
    # split_space_search = True
    paginate_by = 20
    paginate_position = 'Bottom'  # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'


class SuccessfulTendererCRUD(CRUDView):
    model = Supplier
    template_name_base = 'crud'

    check_login = True
    check_perms = True
    fields = ['name', 'phone_number1', 'web', 'tax_office', 'tax_id', 'address', 'notes']
    list_fields = ['name', 'phone_number1', 'web']
    display_fields = ['name', 'phone_number1', 'web', 'address', 'notes']

    views_available = ['create', 'list', 'delete', 'update']


class TenderTypeCRUD(CRUDView):
    model = TenderType

    check_login = True
    check_perms = True
    fields = ['name', 'code', 'last_tender_no', 'description']
    list_fields = ['name', 'code', 'total']
    display_fields = ['name', 'code', 'description']

    views_available = ['create', 'list', 'delete', 'update']


class TenderStatusCRUD(CRUDView):
    model = TenderStatus

    check_login = True
    check_perms = True
    fields = ['name', 'bgcolor', 'description']
    list_fields = ['name']
    display_fields = ['name', 'bgcolor', 'description']

    views_available = ['create', 'list', 'delete', 'update']


class TravellingExpenseCRUD(CRUDView):
    model = TravellingExpense
    template_name_base = 'crud'
    check_login = True
    check_perms = True
    fields = ['name', 'surname', 'institution', 'start_date', 'end_date', 'location', 'price', 'currency', 'notes',
              'activity_report']
    list_fields = ['name', 'surname', 'institution', 'start_date', 'end_date', 'price', 'currency', 'location']
    display_fields = ['name', 'surname', 'institution', 'start_date', 'end_date', 'location', 'price', 'currency',
                      'notes']

    views_available = ['create', 'list', 'delete', 'update']

    list_filter = ['name', 'institution']

    add_form = TravellingExpenseForm
    update_form = TravellingExpenseForm

    search_fields = ['name', 'surname', 'institution', 'location', 'notes']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom'  # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'


@login_required
def generate_tender_pdf(request):
    printTime = datetime.now()

    tender_type = request.GET.get('tender_type')
    tender_status = request.GET.get('tender_status')

    if (tender_type is not None) and (tender_status is not None):
        tenders = Tender.objects.filter(tender_type__id=int(tender_type),
                                        tender_status__id=int(tender_status)).order_by('-no')
        html_string = render_to_string('procurement/pdf/tender_list.html', {'tenders': tenders, 'datetime': printTime})
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        result = html.write_pdf(presentational_hints=True)

    elif tender_type is not None:
        tenders = Tender.objects.filter(tender_type__id=int(tender_type)).order_by('-no')
        html_string = render_to_string('procurement/pdf/tender_list.html', {'tenders': tenders, 'datetime': printTime})
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        result = html.write_pdf(presentational_hints=True)
    elif tender_status is not None:
        tenders = Tender.objects.filter(tender_status__id=int(tender_status)).order_by('-no')
        html_string = render_to_string('procurement/pdf/tender_list.html', {'tenders': tenders, 'datetime': printTime})
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        result = html.write_pdf(presentational_hints=True)
    elif tender_type is None:
        tenders = Tender.objects.all().order_by('-no')
        html_string = render_to_string('procurement/pdf/tender_list.html', {'tenders': tenders, 'datetime': printTime})
        html = HTML(string=html_string)
        result = html.write_pdf()

    response = HttpResponse(content_type='application/pdf;')
    response['Content-Disposition'] = 'inline; filename=list_action.pdf'
    response['Content-Transfer-Encoding'] = 'binary'
    with tempfile.NamedTemporaryFile(delete=True) as output:
        output.write(result)
        output.flush()
        output = open(output.name, 'rb')
        response.write(output.read())

    return response
