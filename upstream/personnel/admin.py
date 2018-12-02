# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from django import forms
from . import models
from django.contrib.admin.widgets import FilteredSelectMultiple

class PersonnelAdmin(admin.ModelAdmin):
     list_display = ('user', 'surname','personnel_type','nat_id','email')

admin.site.register(models.Personnel,PersonnelAdmin)
admin.site.register(models.Personnel_type)
admin.site.register(models.Personnel_file)
admin.site.register(models.Annual_leave)
admin.site.register(models.Message)
