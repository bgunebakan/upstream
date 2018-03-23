# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import *

#class TenderAdmin(admin.ModelAdmin):
    #filter_horizontal = ('supplier',)
#    fields= ()

class Tender_end_dateInline(admin.TabularInline):
    model = Tender_end_date
    ordering = ('id',)

class TenderAdmin(admin.ModelAdmin):
    list_display = ['name', 'no', 'tender_status']
    inlines = [Tender_end_dateInline,]

admin.site.register(Tender,TenderAdmin)
#admin.site.register(Tender_end_date)
admin.site.register(TenderType)
admin.site.register(TenderContent)
admin.site.register(Unit)
admin.site.register(Currency)
admin.site.register(TenderStatus)
admin.site.register(Supplier)
