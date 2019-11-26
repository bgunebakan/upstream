# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import *
from import_export.admin import ImportExportModelAdmin
from django.contrib import admin
from import_export import resources

admin.site.register(Location)
admin.site.register(Room)
admin.site.register(Shelf)
admin.site.register(ItemType)
admin.site.register(ItemStatus)
admin.site.register(Unit)
admin.site.register(Log)
admin.site.register(Inventory)
# admin.site.register(Supplier)
admin.site.register(Basket)


class ItemResource(resources.ModelResource):
    class Meta:
        model = Item
        fields = ('id', 'name', 'category__name','shelf','item_type__name','item_status__name','inventory__name','notes')

@admin.register(Item)
class ItemImportExportAdmin(ImportExportModelAdmin):
    resource_class = ItemResource


class CategoryResource(resources.ModelResource):
    class Meta:
        model = Category
        fields = ('id', 'name', 'top_category__name',)


@admin.register(Category)
class CategoryImportExportAdmin(ImportExportModelAdmin):
    resource_class = CategoryResource
