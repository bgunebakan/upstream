# -*- coding: utf-8 -*-
from django import forms

from .models import *
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Field, Submit, HTML
from crispy_forms.bootstrap import TabHolder, Tab, FormActions
from django.utils.translation import ugettext_lazy as _
from cruds_adminlte import (DatePickerWidget,
                            TimePickerWidget,
                            DateTimePickerWidget,
                            ColorPickerWidget,
                            CKEditorWidget)

class LocationForm(forms.ModelForm):

    class Meta:
        model = Location
        fields = ['name','address','phone_number1','phone_number2']

        widgets = {
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),

        }

    def __init__(self, *args, **kwargs):
        super(LocationForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            Field('name', wrapper_class="col-md-12"),
            Field('phone_number1', wrapper_class="col-md-6"),
            Field('phone_number2', wrapper_class="col-md-6"),
            Field('address', wrapper_class="col-md-12"),

        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class InventoryForm(forms.ModelForm):

    class Meta:
        model = Inventory
        fields = ['name','location','notes']

        widgets = {
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),

        }

    def __init__(self, *args, **kwargs):
        super(InventoryForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            Field('name', wrapper_class="col-md-6"),
            Field('location', wrapper_class="col-md-6"),
            Field('notes', wrapper_class="col-md-12"),

        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class CategoryForm(forms.ModelForm):

    class Meta:
        model = Category
        fields = ['name','top_category','notes']

        widgets = {
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),

        }

    def __init__(self, *args, **kwargs):
        super(CategoryForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            Field('name', wrapper_class="col-md-6"),
            Field('top_category', wrapper_class="col-md-6"),
            Field('notes', wrapper_class="col-md-12"),


        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class ItemTypeForm(forms.ModelForm):

    class Meta:
        model = ItemType
        fields = ['name','code','notes']

        widgets = {
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),

        }

    def __init__(self, *args, **kwargs):
        super(ItemTypeForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            Field('name', wrapper_class="col-md-6"),
            Field('code', wrapper_class="col-md-6"),
            Field('notes', wrapper_class="col-md-12"),

        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class ItemForm(forms.ModelForm):

    class Meta:
        model = Item
        fields = ['name','brand','model','picture','quantity','unit','shelf','part_number','notes','suppliers','inventory','category','item_type']

        widgets = {
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),

        }

    def __init__(self, *args, **kwargs):
        super(ItemForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    _('General'),
                    Field('name', wrapper_class="col-md-6"),
                    Field('brand', wrapper_class="col-md-6"),
                    Field('model', wrapper_class="col-md-6"),
                    Field('part_number', wrapper_class="col-md-6"),
                    Field('item_type', wrapper_class="col-md-6"),
                    Field('category', wrapper_class="col-md-6"),
                    Field('picture', wrapper_class="col-md-12"),

                ),
                Tab(
                    _('Details'),
                    Field('quantity', wrapper_class="col-md-6"),
                    Field('unit', wrapper_class="col-md-6"),
                    Field('shelf', wrapper_class="col-md-6"),
                    Field('suppliers', wrapper_class="col-md-6"),


                ),
                Tab(
                    _('Notes'),
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

class SupplierForm(forms.ModelForm):

    class Meta:
        model = Supplier
        fields = ['name','address','phone_number','web','notes']

        widgets = {
            'notes': CKEditorWidget(attrs={'lang': 'tr'}),

        }

    def __init__(self, *args, **kwargs):
        super(SupplierForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            Field('name', wrapper_class="col-md-12"),
            Field('phone_number', wrapper_class="col-md-6"),
            Field('web', wrapper_class="col-md-6"),
            Field('address', wrapper_class="col-md-12"),
            Field('notes', wrapper_class="col-md-12"),

        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )
