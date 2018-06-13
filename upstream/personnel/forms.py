# -*- coding: utf-8 -*-
from crispy_forms.bootstrap import TabHolder, Tab, FormActions
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Field, Submit, HTML
from django import forms
from django.utils.translation import ugettext_lazy as _
from image_cropping import ImageCropWidget
from django.contrib.auth.models import User

from cruds_adminlte import (DatePickerWidget,
                            TimePickerWidget,
                            DateTimePickerWidget,
                            ColorPickerWidget,
                            CKEditorWidget)
from .models import Personnel,Personnel_type,Annual_leave #,Identifier,IdentifierType,Controller,Door,Door_group

class UserForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ['first_name','last_name','username','email']

    def __init__(self, *args, **kwargs):
        super(UserForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

                    'User Details'.decode('utf-8'),
                    Field('first_name', wrapper_class="col-md-6"),
                    Field('last_name', wrapper_class="col-md-6"),
                    Field('username', wrapper_class="col-md-6"),
                    Field('email', wrapper_class="col-md-6"),
        )
        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class PersonnelForm(forms.ModelForm):

    class Meta:
        model = Personnel
        fields = ['personnel_type','name', 'surname','birth_date', 'country','nat_id','gender','department','title',
        'job','phone_number1','phone_number2','email','address','marital_status',
         'drive_licence','health_status','notes','cv','profile_picture','user_file','extra_file1','extra_file2','extra_file3']

        widgets = {

            'birth_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
            'cv': CKEditorWidget(attrs={'lang': 'tr'}),
        }

    def __init__(self, *args, **kwargs):
        super(PersonnelForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    'Personel Details'.decode('utf-8'),
                    Field('name', wrapper_class="col-md-6"),
                    Field('surname', wrapper_class="col-md-6"),
                    Field('nat_id', wrapper_class="col-md-6"),
                    Field('country', wrapper_class="col-md-6"),
                    Field('personnel_type', wrapper_class="col-md-6"),
                    Field('gender', wrapper_class="col-md-6"),
                    Field('marital_status', wrapper_class="col-md-6"),
                    Field('birth_date', wrapper_class="col-md-6"),
                    Field('profile_picture', wrapper_class="col-md-12"),
                ),
                Tab(
                    'Contact'.decode('utf-8'),
                    Field('phone_number1', wrapper_class="col-md-4"),
                    Field('phone_number2', wrapper_class="col-md-4"),
                    Field('email', wrapper_class="col-md-4"),
                    Field('address', wrapper_class="col-md-12"),
                    Field('notes', wrapper_class="col-md-12"),
                ),
                Tab(
                    _('Professional Details'),
                    Field('department', wrapper_class="col-md-6"),
                    Field('job', wrapper_class="col-md-6"),
                    Field('title', wrapper_class="col-md-6"),
                    Field('drive_licence', wrapper_class="col-md-6"),

                ),
                #Tab(
                #    'Files'.decode('utf-8'),
                #    Field('user_file', wrapper_class="col-md-12"),
                #    Field('health_status', wrapper_class="col-md-12"),
                #    Field('extra_file1', wrapper_class="col-md-12"),
                #    Field('extra_file2', wrapper_class="col-md-12"),
                #    Field('extra_file3', wrapper_class="col-md-12"),
                #),
                Tab(
                    'CV'.decode('utf-8'),
                    Field('cv', wrapper_class="col-md-12"),
                )
            )
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Update'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">Delete</a>"""),
            )
        )

class Personnel_typeForm(forms.ModelForm):

    class Meta:
        model = Personnel_type
        fields = ['name','slug','color','icon']

    def __init__(self, *args, **kwargs):
        super(Personnel_typeForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            _('Genel Bilgiler'),
            Field('name', wrapper_class="col-md-12"),
            Field('slug', wrapper_class="col-md-4"),
            Field('icon', wrapper_class="col-md-4"),
            Field('color', wrapper_class="col-md-4"),

        )
        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class Annual_leaveForm(forms.ModelForm):

    class Meta:
        model = Annual_leave
        fields = ['user','start_date','end_date','notes']

        widgets = {

            'start_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
            'end_date': DatePickerWidget(attrs={'format': 'dd/mm/yyyy',
                                            'icon': 'fa-calendar'}),
        }
    def __init__(self, *args, **kwargs):
        super(Annual_leaveForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

            _('Genel Bilgiler'),
            Field('name', wrapper_class="col-md-12"),
            Field('start_date', wrapper_class="col-md-6"),
            Field('end_date', wrapper_class="col-md-6"),
            Field('notes', wrapper_class="col-md-12"),

        )
        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Submit'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )
