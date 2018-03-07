# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from . import models


class PersonnelAdmin(admin.ModelAdmin):
     list_display = ('user', 'surname','personnel_type','nat_id','email')

admin.site.register(models.Personnel,PersonnelAdmin)
admin.site.register(models.Personnel_type)
