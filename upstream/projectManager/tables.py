# -*- coding: utf-8 -*-
from models import *
import django_tables2 as tables

class ProjectTable(tables.Table):

    #Identifier = tables.Column(accessor='personnel.identifier.key')
    Detail = tables.TemplateColumn('<a href="/project/detail/{{record.id}}" ><i class="fa  fa-edit"></i></a>')

    class Meta:
        model = Project
        fields = ('name','top_project', 'owner', 'group','created_date')

        attrs = {'class': 'table table-bordered table-hover'}
