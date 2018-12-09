# -*- coding: utf-8 -*-
from .models import *
from django.contrib.auth.models import User
import django_tables2 as tables
import datetime

class VisitTable(tables.Table):

    #Identifier = tables.Column(accessor='personnel.identifier.key')
    #Profil = tables.TemplateColumn('<a href="/personnel/profile/{{record.personnel.user.username}}" ><i class="fa  fa-edit"></i></a>')
    #Personnel = tables.Column(accessor='personnel.name')
    class Meta:
        model = Visit
        fields = ('person', 'enteR_TIME', 'exiT_TIME','duration')

        attrs = {'class': 'table table-bordered table-hover'}
        duration = tables.Column(verbose_name='(h:m:s)')


    def __init__(self, *args, **kwargs):
        super(VisitTable, self).__init__(*args, **kwargs)
        #users = User.objects.all()
        #self.rows['user'] = "[(user.pk, user.get_full_name()) for user in users]"
    def render_duration(self, value, record):
        return (str(datetime.timedelta(seconds=value)))


class PersonTable(tables.Table):

    #Permission = tables.TemplateColumn('<a href="/portunes/access/{{record.id}}/" ><i class="fa  fa-edit"></i></a>')
    #Sil = tables.TemplateColumn('<a href="/users/delete/{{record.nat_id}}/"><i class="fa   fa-eraser"></i></a>')

    class Meta:
        model = Person
        fields = ('firstname', 'surname','enable','cardnum')
        attrs = {'class': 'table table-bordered table-hover'}
