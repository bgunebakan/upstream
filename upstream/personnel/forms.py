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
from .models import Personnel,Personnel_type #,Identifier,IdentifierType,Controller,Door,Door_group

class UserForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ['first_name','last_name','username','email']

    def __init__(self, *args, **kwargs):
        super(UserForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(

                    'Kullanici Bilgileri'.decode('utf-8'),
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
        'job','phone_number1','phone_number2','email','address','marital_status','military_situation',
         'drive_licence','health_status','notes','cv','profile_picture','user_file']

        widgets = {

            'birth_date': DatePickerWidget(attrs={'format': 'd/m/yyyy',
                                            'icon': 'fa-calendar'}),
            'cv': CKEditorWidget(attrs={'lang': 'tr'}),
        }

    def __init__(self, *args, **kwargs):
        super(PersonnelForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

#'personnel_type','name', 'surname', 'country','nat_id','gender','department','title',
#'job','phone_number1','phone_number2','email','address','marital_status','military_situation',
# 'drive_licence','health_status','description','profile_picture','user_file')

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    'Kişisel Bilgiler'.decode('utf-8'),
                    Field('name', wrapper_class="col-md-6"),
                    Field('surname', wrapper_class="col-md-6"),
                    Field('nat_id', wrapper_class="col-md-6"),
                    Field('country', wrapper_class="col-md-6"),
                    Field('personnel_type', wrapper_class="col-md-6"),
                    Field('birth_date', wrapper_class="col-md-6"),
                    Field('gender', wrapper_class="col-md-6"),
                    Field('marital_status', wrapper_class="col-md-6"),
                    Field('military_situation', wrapper_class="col-md-6"),
                    Field('health_status', wrapper_class="col-md-6"),
                    Field('profile_picture', wrapper_class="col-md-6"),
                ),
                Tab(
                    'İletişim bilgileri'.decode('utf-8'),
                    Field('phone_number1', wrapper_class="col-md-4"),
                    Field('phone_number2', wrapper_class="col-md-4"),
                    Field('email', wrapper_class="col-md-4"),
                    Field('address', wrapper_class="col-md-12"),
                    Field('notes', wrapper_class="col-md-12"),
                ),
                Tab(
                    _('Mesleki Bilgiler'),
                    Field('department', wrapper_class="col-md-6"),
                    Field('job', wrapper_class="col-md-6"),
                    Field('title', wrapper_class="col-md-6"),
                    Field('drive_licence', wrapper_class="col-md-6"),
                    Field('user_file', wrapper_class="col-md-12"),

                ),Tab(
                    'Öz Geçmiş'.decode('utf-8'),
                    Field('cv', wrapper_class="col-md-12"),
                )
            )
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Kaydet'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

class Personnel_typeForm(forms.ModelForm):

    class Meta:
        model = Personnel_type
        fields = ['name','slug','color','icon','total']

    def __init__(self, *args, **kwargs):
        super(Personnel_typeForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    _('Invoice'),
                    Field('name', wrapper_class="col-md-12"),
                    Field('slug', wrapper_class="col-md-4"),
                    Field('icon', wrapper_class="col-md-4"),
                    Field('color', wrapper_class="col-md-4"),

                ),
                Tab(
                    _('Email'),
                    Field('total', wrapper_class="col-md-3"),
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

class Personnel2Form(forms.ModelForm):

    class Meta:
        model = Personnel
        fields = ('personnel_type','name', 'surname', 'country','nat_id','gender','department','title',
        'job','phone_number1','phone_number2','email','address','marital_status','military_situation',
         'drive_licence','health_status','notes','profile_picture','user_file')

    def __init__(self, *args, **kwargs):
        super(PersonnelForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['surname'].widget.attrs.update({'class' : 'form-control'})
        self.fields['country'].widget.attrs.update({'class' : 'form-control'})
        self.fields['nat_id'].widget.attrs.update({'class' : 'form-control'})
        self.fields['gender'].widget.attrs.update({'class' : 'form-control'})
        self.fields['department'].widget.attrs.update({'class' : 'form-control'})
        self.fields['title'].widget.attrs.update({'class' : 'form-control'})
        self.fields['job'].widget.attrs.update({'class' : 'form-control'})
        self.fields['phone_number1'].widget.attrs.update({'class' : 'form-control'})
        self.fields['phone_number2'].widget.attrs.update({'class' : 'form-control'})
        self.fields['email'].widget.attrs.update({'class' : 'form-control'})
        self.fields['address'].widget.attrs.update({'class' : 'form-control'})
        self.fields['marital_status'].widget.attrs.update({'class' : 'form-control'})
        self.fields['military_situation'].widget.attrs.update({'class' : 'form-control'})
        self.fields['drive_licence'].widget.attrs.update({'class' : 'form-control'})
        self.fields['health_status'].widget.attrs.update({'class' : 'form-control'})
        #self.fields['identifier'].widget.attrs.update({'class' : 'form-control'})
        self.fields['description'].widget.attrs.update({'class' : 'form-control'})
        self.fields['profile_picture'].widget.attrs.update({'class' : 'form-control'})
        self.fields['user_file'].widget.attrs.update({'class' : 'form-control'})
        #self.fields['identifier'].queryset = Identifier.objects.filter(identifier_type=1).select_related('personnel')


class GuestForm(forms.ModelForm):


    class Meta:
        model = Personnel
        fields = ('name', 'surname', 'country','nat_id','notes')

    def __init__(self, *args, **kwargs):
        super(GuestForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['surname'].widget.attrs.update({'class' : 'form-control'})
        self.fields['country'].widget.attrs.update({'class' : 'form-control'})
        self.fields['nat_id'].widget.attrs.update({'class' : 'form-control'})
        #self.fields['identifier'].widget.attrs.update({'class' : 'form-control'})
        self.fields['notes'].widget.attrs.update({'class' : 'form-control'})
        #self.fields['identifier'].queryset = Identifier.objects.filter(identifier_type=2)
