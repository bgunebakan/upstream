# -*- coding: utf-8 -*-
from django import forms

from .models import Tender,Tender_end_date,TenderContent,TravellingExpense,TenderOffer
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Field, Submit, HTML
from crispy_forms.bootstrap import TabHolder, Tab, FormActions
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import User
from django import forms
from upstream import settings

from cruds_adminlte import (DatePickerWidget,
                            TimePickerWidget,
                            DateTimePickerWidget,
                            ColorPickerWidget,
                            CKEditorWidget)

class TenderOfferForm(forms.ModelForm):
    class Meta:
        model = TenderOffer
        fields = ['firm','price','currency','vat']

    def __init__(self, *args, **kwargs):
        super(TenderOfferForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False
        self.helper.layout = Layout(
            Field('firm', wrapper_class="col-md-12"),
            Field('price', wrapper_class="col-md-4"),
            Field('currency', wrapper_class="col-md-4"),
            Field('vat', wrapper_class="col-md-4"),
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class Tender_Form(forms.ModelForm):

    class Meta:
        model = Tender
        fields = ['name','no','tender_type','approximate_price','currency','tender_status','notes','specification',
                    'invoice','tenderapproval','agreement','firm_location',
                    'apply_date','auction_date','auction_time','auction_price','auction_no','auction_location',
                    'supplier','user','bap_staff','contract_date','published','publish_notes','publish_status']

        widgets = {
            'apply_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
            'contract_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
            'auction_date': DatePickerWidget(
                attrs={'format': 'dd/mm/yyyy',
                       'icon': 'fa-calendar'}),
            'auction_time': TimePickerWidget(
                attrs={
                       'icon': 'fa-clock-o'}),
            'notes': CKEditorWidget(attrs={'lang': 'en'}),
            'publish_notes': CKEditorWidget(attrs={'lang': 'en'}),

        }

    def __init__(self, *args, **kwargs):
        super(Tender_Form, self).__init__(*args, **kwargs)
        users = User.objects.all()
        choice_list = list()
        choice_list.append( (None, '----'))
        for user in users:
            if user.is_active:
                choice_list.append((user.pk,user.get_full_name()))

        self.fields['user'].choices = choice_list#[(user.pk, user.get_full_name()) for user in users]

        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    _('General'),
                    Field('name', wrapper_class="col-md-12"),
                    Field('tender_type', wrapper_class="col-md-6"),
                    Field('tender_status', wrapper_class="col-md-6"),
                    Field('no', wrapper_class="col-md-6"),
                    Field('apply_date', wrapper_class="col-md-6"),

                ),
                Tab(
                    _('Details'),
                    Field('bap_staff', wrapper_class="col-md-6"),
                    Field('user', wrapper_class="col-md-6"),
                    Field('supplier', wrapper_class="col-md-6"),
                    Field('specification', wrapper_class="col-md-12"),
                    Field('agreement', wrapper_class="col-md-12"),
                    Field('invoice', wrapper_class="col-md-12"),
                    Field('tenderapproval', wrapper_class="col-md-12"),

                ),
                Tab(
                    _('Auction'),
                    Field('auction_no', wrapper_class="col-md-12"),
                    Field('auction_date', wrapper_class="col-md-4"),
                    Field('auction_time', wrapper_class="col-md-4"),
                    Field('auction_price', wrapper_class="col-md-4"),
                    Field('auction_location', wrapper_class="col-md-6"),
                    Field('firm_location', wrapper_class="col-md-6"),
                    Field('contract_date', wrapper_class="col-md-12"),
                ),
                Tab(
                    _('Notes'),
                    Field('notes', wrapper_class="col-md-12"),
                ),
                Tab(
                    _('Publish'),
                    Field('published', wrapper_class="col-md-6"),
                    Field('publish_status', wrapper_class="col-md-6"),
                    Field('publish_notes', wrapper_class="col-md-12"),
                )
            )
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class Tender_contentForm(forms.ModelForm):

    class Meta:
        model = TenderContent
        fields = ['name','quantity','unit','price','currency']

    def __init__(self, *args, **kwargs):
        super(Tender_contentForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False
        self.helper.layout = Layout(
            Field('name', wrapper_class="col-md-3"),
            Field('quantity', wrapper_class="col-md-3"),
            Field('unit', wrapper_class="col-md-3"),
            Field('price', wrapper_class="col-md-3"),
            Field('currency', wrapper_class="col-md-3"),
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class Tender_end_dateForm(forms.ModelForm):

    class Meta:
        model = Tender_end_date
        fields = ['timedate','notify','notes']
        widgets = {
            'timedate': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
        }

    def __init__(self, *args, **kwargs):
        super(Tender_end_dateForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False



class TravellingExpenseForm(forms.ModelForm):

    class Meta:
        model = TravellingExpense
        fields = ['name','surname','institution','activity_report','start_date','end_date','location','price','currency','notes']

        widgets = {
            'start_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
            'end_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
            'notes': CKEditorWidget(attrs={'lang': 'en'}),
        }

    def __init__(self, *args, **kwargs):
        super(TravellingExpenseForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            Field('name', wrapper_class="col-md-6"),
            Field('surname', wrapper_class="col-md-6"),
            Field('institution', wrapper_class="col-md-6"),
            Field('location', wrapper_class="col-md-6"),
            Field('start_date', wrapper_class="col-md-6"),
            Field('end_date', wrapper_class="col-md-6"),
            Field('price', wrapper_class="col-md-6"),
            Field('currency', wrapper_class="col-md-6"),
            Field('activity_report', wrapper_class="col-md-12"),
            Field('notes', wrapper_class="col-md-12"),
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )
