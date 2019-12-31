# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import *
from import_export.admin import ImportExportModelAdmin
from import_export import resources

admin.site.register(Controller)
admin.site.register(Identifier)
admin.site.register(Action)
admin.site.register(Action_type)
admin.site.register(Door)
admin.site.register(DoorGroup)
admin.site.register(Permission)

class ActionResource(resources.ModelResource):
    class Meta:
        model = Action
        fields = ('user', 'identifier', 'door','action_type','created_date')

@admin.register(Action)
class ItemImportExportAdmin(ImportExportModelAdmin):
    resource_class = ActionResource