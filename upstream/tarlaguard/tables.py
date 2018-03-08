# -*- coding: utf-8 -*-
from models import *
import django_tables2 as tables

class ActionTable(tables.Table):

    #Identifier = tables.Column(accessor='personnel.identifier.key')
    Profil = tables.TemplateColumn('<a href="/personnel/profile/{{record.personnel.user.username}}" ><i class="fa  fa-edit"></i></a>')
    #Personnel = tables.Column(accessor='personnel.name')
    class Meta:
        model = Action
        fields = ('personnel','identifier', 'door', 'action_type','created_date')

        attrs = {'class': 'table table-bordered table-hover'}

class PersonnelTable(tables.Table):

    Profil = tables.TemplateColumn('<a href="/users/detail/{{record.nat_id}}/" ><i class="fa  fa-edit"></i></a>')
    #Sil = tables.TemplateColumn('<a href="/users/delete/{{record.nat_id}}/"><i class="fa   fa-eraser"></i></a>')

    class Meta:
        model = Personnel
        fields = ('name', 'surname', 'nat_id', 'identifier','description')
        exclude = ('profile_picture')
        # add class="paleblue" to <table> tag
        attrs = {'class': 'table table-bordered table-hover'}

class GuestTable(tables.Table):

    Profil = tables.TemplateColumn('<a href="/users/detail/{{record.nat_id}}/" ><i class="fa  fa-edit"></i></a>')
    Cikis_yap = tables.TemplateColumn('<a href="/users/delete/{{record.nat_id}}/"><i class="fa   fa-eraser"></i></a>',verbose_name="Çıkış Yap")

    class Meta:
        model = Personnel
        fields = ('name', 'surname', 'nat_id', 'identifier','description')
        exclude = ('profile_picture')
        # add class="paleblue" to <table> tag
        attrs = {'class': 'table table-bordered table-hover'}

class ControllerTable(tables.Table):

    Duzenle = tables.TemplateColumn('<a href="/controllers/{{record.mac}}/"><i class="fa  fa-edit"></i></a>')

    class Meta:
        model = Controller
        # add class="paleblue" to <table> tag
        attrs = {'class': 'table table-bordered table-hover'}

class DoorTable(tables.Table):

    Duzenle = tables.TemplateColumn('<a href="/doors/detail/{{record.id}}/"><i class="fa  fa-edit"></i></a>')

    class Meta:
        model = Door
        # add class="paleblue" to <table> tag
        attrs = {'class': 'table table-bordered table-hover'}


class IdentifierTable(tables.Table):

    Duzenle = tables.TemplateColumn('<a href="/identifiers/detail/{{record.key}}/"><i class="fa  fa-edit"></i></a>')
#    Sil = tables.TemplateColumn('<a href="/identifiers/delete/{{record.key}}/"><i class="fa   fa-eraser"></i></a>')
    class Meta:
        model = Identifier
        exclude = ('deleted','is_active')
        # add class="paleblue" to <table> tag
        attrs = {'class': 'table table-bordered table-hover'}