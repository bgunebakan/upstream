# -*- coding: utf-8 -*-
from models import *
import django_tables2 as tables

class ItemTable(tables.Table):

    #Identifier = tables.Column(accessor='personnel.identifier.key')
    Detail = tables.TemplateColumn('<a href="detail/{{record.id}}" ><i class="fa  fa-edit"></i></a>')

    class Meta:
        model = Item
        fields = ('name','brand', 'model', 'notes','inventory')

        attrs = {'class': 'table table-bordered table-hover'}

class LogTable(tables.Table):
    class Meta:
        model = Log
        fields = ('timedate','action', 'item', 'user')

        attrs = {'class': 'table table-bordered table-hover'}
