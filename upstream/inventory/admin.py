# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import *

#class ItemAdmin(admin.ModelAdmin):
#    filter_horizontal = ('suppliers',)



admin.site.register(Location)
admin.site.register(Room)
admin.site.register(Shelf)
#admin.site.register(Item,ItemAdmin)
admin.site.register(ItemType)
admin.site.register(ItemStatus)
#admin.site.register(Category)
admin.site.register(Log)
admin.site.register(Inventory)
admin.site.register(Supplier)

from import_export.admin import ImportExportModelAdmin
from django.contrib import admin

@admin.register(Item)
class ItemImportExportAdmin(ImportExportModelAdmin):
    pass

@admin.register(Category)
class ItemImportExportAdmin(ImportExportModelAdmin):
    pass
