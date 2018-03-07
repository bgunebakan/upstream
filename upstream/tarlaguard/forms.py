# -*- coding: utf-8 -*-
from django import forms

from .models import * #Personnel,Identifier,IdentifierType,Controller,Door,Door_group


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

class IdentifierForm(forms.ModelForm):

    class Meta:
        model = Identifier
        fields = ('name', 'key', 'is_active', 'identifier_type')

    def __init__(self, *args, **kwargs):
        super(IdentifierForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class' : 'form-control'})
        self.fields['key'].widget.attrs.update({'class' : 'form-control'})
        self.fields['is_active'].widget.attrs.update({'class' : 'form-control'})
        self.fields['identifier_type'].widget.attrs.update({'class' : 'form-control'})
        self.fields['name'].label = "Kart Adi"
        self.fields['key'].label = "Kart No"
        self.fields['is_active'].label = "Aktiflik"
        self.fields['identifier_type'].label = "Kart Tipi"

#    def clean_key(self):
#        if self.instance.is_disabled:
#            return self.instance.key
#        else:
#            return self.cleaned_data.get('key')
