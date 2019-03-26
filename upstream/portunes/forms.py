# -*- coding: utf-8 -*-
from django import forms

from .models import * #Personnel,Identifier,IdentifierType,Controller,Door,Door_group
from crispy_forms.bootstrap import TabHolder, Tab, FormActions
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Field, Submit, HTML
from django import forms
from django.utils.translation import ugettext_lazy as _
from image_cropping import ImageCropWidget
from cruds_adminlte import (DatePickerWidget,
                            TimePickerWidget,
                            DateTimePickerWidget,
                            ColorPickerWidget,
                            CKEditorWidget)

class ControllerForm(forms.ModelForm):

    class Meta:
        model = Controller
        fields = ('name', 'mac', 'ip_address', 'health')

    def __init__(self, *args, **kwargs):
        super(ControllerForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['mac'].widget.attrs.update({'class' : 'form-control'})
        self.fields['ip_address'].widget.attrs.update({'class' : 'form-control'})
        self.fields['health'].widget.attrs.update({'class' : 'form-control'})

class DoorForm(forms.ModelForm):

    class Meta:
        model = Door
        fields = ('name','entrance', 'entrance_controller_pin', 'enter', 'description')

    def __init__(self, *args, **kwargs):
        super(DoorForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['entrance'].widget.attrs.update({'class' : 'form-control'})
        self.fields['entrance_controller_pin'].widget.attrs.update({'class' : 'form-control'})
        self.fields['enter'].widget.attrs.update({'class' : 'form-control'})
        self.fields['description'].widget.attrs.update({'class' : 'form-control'})

class DoorGroupForm(forms.ModelForm):

    class Meta:
        model = DoorGroup
        fields = ['name','doors']

    def __init__(self, *args, **kwargs):
        super(DoorGroupForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            _('Genel Bilgiler'),
            Field('name', wrapper_class="col-md-12"),
            Field('doors', wrapper_class="col-md-12"),

        )
        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class IdentifierForm(forms.ModelForm):

    class Meta:
        model = Identifier
        fields = ('name', 'key','user', 'is_active', 'identifier_type')

    def __init__(self, *args, **kwargs):
        super(IdentifierForm, self).__init__(*args, **kwargs)
        users = User.objects.all()

        choice_list = list()
        choice_list.append( (None, '----'))
        for user in users:
            choice_list.append((user.pk,user.get_full_name()))

        self.fields['user'].choices = choice_list#[(user.pk, user.get_full_name()) for user in users]
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['key'].widget.attrs.update({'class' : 'form-control'})
        self.fields['is_active'].widget.attrs.update({'class' : 'form-control'})
        self.fields['identifier_type'].widget.attrs.update({'class' : 'form-control'})
        self.fields['name'].label = "Card Name"
        self.fields['key'].label = "Card No"
        self.fields['is_active'].label = "active"
        self.fields['user'].label = "User"
        self.fields['identifier_type'].label = "Card Type"

class IdentifierUpdateForm(forms.ModelForm):

    class Meta:
        model = Identifier
        fields = ('name', 'key','user', 'is_active', 'identifier_type')

    def __init__(self, *args, **kwargs):
        super(IdentifierUpdateForm, self).__init__(*args, **kwargs)
        users = User.objects.all()
        choice_list = list()
        choice_list.append( (None, '----'))
        for user in users:
            choice_list.append((user.pk,user.get_full_name()))

        self.fields['user'].choices = choice_list#[(user.pk, user.get_full_name()) for user in users]
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['key'].widget.attrs.update({'class' : 'form-control'})
        self.fields['key'].widget.attrs['readonly'] = True
        self.fields['is_active'].widget.attrs.update({'class' : 'form-control'})
        self.fields['identifier_type'].widget.attrs.update({'class' : 'form-control'})
        self.fields['name'].label = "Card Name"
        self.fields['key'].label = "Card No"
        self.fields['is_active'].label = "active"
        self.fields['user'].label = "User"
        self.fields['identifier_type'].label = "Card Type"
