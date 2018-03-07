# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from . import models


class PersonnelAdmin(admin.ModelAdmin):
     list_display = ('user', 'surname','nat_id','identifier','email')

admin.site.register(models.Personnel,PersonnelAdmin)
