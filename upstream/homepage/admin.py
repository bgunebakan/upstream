# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import *

class SettingAdmin(admin.ModelAdmin):
     list_display = ('name', 'value','int_value')

admin.site.register(Setting,SettingAdmin)
admin.site.register(Menu_item)
admin.site.register(Post)
admin.site.register(Category)
