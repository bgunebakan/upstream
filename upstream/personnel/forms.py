# -*- coding: utf-8 -*-
from django import forms

from .models import Personnel #,Identifier,IdentifierType,Controller,Door,Door_group

class PersonnelForm(forms.ModelForm):

    class Meta:
        model = Personnel
        fields = ('name', 'surname', 'country','nat_id','gender','department','title',
        'job','phone_number1','phone_number2','email','address','marital_status','military_situation',
         'drive_licence','health_status','description','profile_picture','user_file')

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
        fields = ('name', 'surname', 'country','nat_id','description')

    def __init__(self, *args, **kwargs):
        super(GuestForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['surname'].widget.attrs.update({'class' : 'form-control'})
        self.fields['country'].widget.attrs.update({'class' : 'form-control'})
        self.fields['nat_id'].widget.attrs.update({'class' : 'form-control'})
        #self.fields['identifier'].widget.attrs.update({'class' : 'form-control'})
        self.fields['description'].widget.attrs.update({'class' : 'form-control'})
        #self.fields['identifier'].queryset = Identifier.objects.filter(identifier_type=2)
