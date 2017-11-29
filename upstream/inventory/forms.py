# -*- coding: utf-8 -*-
from django import forms

from .models import *
from djrichtextfield.widgets import RichTextWidget

class LocationForm(forms.ModelForm):

    class Meta:
        model = Location
        fields = ('name', 'address', 'phone_number1', 'phone_number2')

    def __init__(self, *args, **kwargs):
        super(LocationForm, self).__init__(*args, **kwargs)

class InventoryForm(forms.ModelForm):

    class Meta:
        model = Inventory
        exclude = ('created_date',)

    def __init__(self, *args, **kwargs):
        super(InventoryForm, self).__init__(*args, **kwargs)

class CategoryForm(forms.ModelForm):

    class Meta:
        model = Category
        exclude = ('created_date',)

    def __init__(self, *args, **kwargs):
        super(CategoryForm, self).__init__(*args, **kwargs)

class ItemTypeForm(forms.ModelForm):

    class Meta:
        model = ItemType
        exclude = ('created_date',)

    def __init__(self, *args, **kwargs):
        super(ItemTypeForm, self).__init__(*args, **kwargs)

class ItemForm(forms.ModelForm):

    class Meta:
        model = Item
        exclude = ('created_date',)

        #fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(ItemForm, self).__init__(*args, **kwargs)

class SupplierForm(forms.ModelForm):

    class Meta:
        model = Supplier
        exclude = ('created_date',)
        
    def __init__(self, *args, **kwargs):
        super(SupplierForm, self).__init__(*args, **kwargs)
