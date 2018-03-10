# -*- coding: utf-8 -*-
from django import forms

from .models import Tender,Tender_end_date
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Field, Submit, HTML
from crispy_forms.bootstrap import TabHolder, Tab, FormActions
from django.utils.translation import ugettext_lazy as _

from cruds_adminlte import (DatePickerWidget,
                            TimePickerWidget,
                            DateTimePickerWidget,
                            ColorPickerWidget,
CKEditorWidget)

class TenderForm(forms.ModelForm):

    class Meta:
        model = Tender
        fields = ['name','no','tender_type','approximate_price','currency','tender_status','notes',
                    'apply_date','auction_date','auction_time','auction_price','auction_no','supplier','user','contract_date']
        widgets = {
            'apply_date': DatePickerWidget(attrs={'format': 'd/m/yyyy',
                                            'icon': 'fa-calendar','lang': 'tr-TR'}),
            'contract_date': DatePickerWidget(attrs={'format': 'd/m/yyyy',
                                            'icon': 'fa-calendar'}),
            'auction_date': DatePickerWidget(
                attrs={'format': 'd/m/yyyy',
                       'icon': 'fa-calendar'}),
            'auction_time': TimePickerWidget(
                attrs={'format': 'hh:ii',
                       'icon': 'fa-clock-o'}),
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),
        }

    def __init__(self, *args, **kwargs):
        super(TenderForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    _('Genel bilgiler'),
                    Field('name', wrapper_class="col-md-12"),
                    Field('tender_type', wrapper_class="col-md-6"),
                    Field('tender_status', wrapper_class="col-md-6"),
                    Field('no', wrapper_class="col-md-6"),
                    Field('apply_date', wrapper_class="col-md-6"),

                ),
                Tab(
                    _('Fiyat bilgileri'),
                    Field('approximate_price', wrapper_class="col-md-6"),
                    Field('currency', wrapper_class="col-md-6"),
                    Field('contract_date', wrapper_class="col-md-6"),

                ),
                Tab(
                    _('ihale bilgileri'),
                    Field('auction_no', wrapper_class="col-md-12"),
                    Field('auction_date', wrapper_class="col-md-4"),
                    Field('auction_time', wrapper_class="col-md-4"),
                    Field('auction_price', wrapper_class="col-md-4"),
                ),
                Tab(
                    _('Sorumlu bilgileri'),
                    Field('user', wrapper_class="col-md-6"),
                    Field('supplier', wrapper_class="col-md-6"),
                    Field('notes', wrapper_class="col-md-12"),
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


class Tender_end_dateForm(forms.ModelForm):

    class Meta:
        model = Tender_end_date
        fields = ['timedate','notify']
        widgets = {
            'timedate': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
        }

    def __init__(self, *args, **kwargs):
        super(Tender_end_dateForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False
