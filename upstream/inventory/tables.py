# -*- coding: utf-8 -*-
from models import *
import django_tables2 as tables
from django.contrib.auth.models import User

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
        fields = ('timedate','action', 'user','notes')

        attrs = {'class': 'table table-bordered table-hover'}




class BasketTable(tables.Table):

    class Meta:
        model = Basket
        fields = ('user','item', 'checkout', 'done','notes')

        attrs = {'class': 'table table-bordered table-hover'}

    def __init__(self, *args, **kwargs):
        super(BasketTable, self).__init__(*args, **kwargs)
