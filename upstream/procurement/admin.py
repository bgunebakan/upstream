# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from import_export import resources

from .models import *

#class TenderAdmin(admin.ModelAdmin):
    #filter_horizontal = ('supplier',)
#    fields= ()

class Tender_end_dateInline(admin.TabularInline):
    model = Tender_end_date
    ordering = ('id',)

#class TenderAdmin(admin.ModelAdmin):
#    list_display = ['name', 'no', 'tender_status']
#    inlines = [Tender_end_dateInline,]

#admin.site.register(Tender,TenderAdmin)
#admin.site.register(Tender_end_date)
admin.site.register(TenderType)
admin.site.register(TenderContent)
admin.site.register(Unit)
admin.site.register(Currency)
admin.site.register(TenderStatus)
admin.site.register(Supplier)
admin.site.register(Log)
admin.site.register(Config)
from import_export.admin import ImportExportModelAdmin
from django.contrib import admin

#@admin.register(Tender)
#class TenderImportExportAdmin(ImportExportModelAdmin):
#    pass

class TenderResource(resources.ModelResource):
    class Meta:
        model = Tender
        fields = ('id', 'name','no', 'tender_type__name','approximate_price','currency__short_name','apply_date','tender_status__name',
                    'auction_date','auction_location','auction_price','firm_location','auction_no','contract_date',
                    'supplier__name','bap_staff','notes')

@admin.register(Tender)
class TenderImportExportAdmin(ImportExportModelAdmin):
    resource_class = TenderResource
