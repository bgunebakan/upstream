# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from .forms import *
from django.http import HttpResponseRedirect
from .tables import *
from .models import Log,Item
from django_tables2 import RequestConfig
from cruds_adminlte.crud import CRUDView
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Q
from django.contrib import messages

@login_required
def index(request):

        return HttpResponseRedirect('/inventory/item/list')

@login_required
def find_item(request):

    sn_code = unicode(request.GET.get("sn_code", ""))
    item_code = unicode(request.GET.get("item_code", ""))
    owner_code = unicode(request.GET.get("owner_code", ""))
    type_code = unicode(request.GET.get("item_type", ""))

    if sn_code is not '':
        type_code = sn_code[0]
        owner_code = sn_code[1]
        item_code = sn_code[2:]
    print item_code + " - " + owner_code + " - " + type_code
    try:
        i = Item.objects.get(Q(code=item_code),Q(owner_code=owner_code),Q(item_type__code=type_code))
    except Item.DoesNotExist:
        messages.error(request,'There is no Item based on your search!')
        return HttpResponseRedirect('/inventory/')
    #print item.count()

    #for i in item:
    print i
    print i.code + "**" + i.owner_code + "**" + i.item_type.code

    return HttpResponseRedirect('/inventory/item/'+unicode(i.id))

@login_required
def ownership_item(request):
    owner_id = unicode(request.POST.get("owner_id", ""))
    item_id = unicode(request.POST.get("item_id", ""))
    notes = unicode(request.POST.get("notes", ""))
    release = unicode(request.POST.get("release", ""))

    if not release:
        try:
            owner = User.objects.get(id=owner_id)
            item = Item.objects.get(id=item_id)
        except ObjectDoesNotExist:
            messages.error(request,'Item ownership cannot changed!')
            return HttpResponseRedirect('/inventory/item/'+unicode(item_id))

        item.owner = owner
        item.save()
        log = Log(item=item,user=owner,action="Ownership",notes=notes)
        log.save()

        print owner_id + "  ---  " + item_id

        messages.success(request,unicode(item) + ' - item ownership has changed to ' + unicode(owner))

    else:
        try:
            item = Item.objects.get(id=item_id)
        except ObjectDoesNotExist:
            messages.error(request,'Item ownership cannot changed!')
            return HttpResponseRedirect('/inventory/item/'+unicode(item_id))

        log = Log(item=item,user=item.owner,action="Release",notes=notes)
        log.save()

        item.owner = None
        item.save()

        messages.success(request,unicode(item) + ' - item has released to inventory. ')

    return HttpResponseRedirect('/inventory/item/'+unicode(item_id))

class LocationCRUD(CRUDView):
    model = Location
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields =  ['name','address','phone_number1','phone_number2']
    list_fields =  ['name','address','phone_number1','phone_number2']
    display_fields =  ['name','address','phone_number1','phone_number2']

    views_available=['create', 'list', 'delete', 'update']

    add_form = LocationForm
    update_form = LocationForm

    search_fields =  ['name','address','phone_number1','phone_number2']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class InventoryCRUD(CRUDView):
    model = Inventory
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields =  ['name','location','notes']
    list_fields =  ['name','location']
    display_fields =  ['name','location','notes']

    views_available=['create', 'list', 'delete', 'update']

    add_form = InventoryForm
    update_form = InventoryForm

    search_fields = ['name','location','notes']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class CategoryCRUD(CRUDView):
    model = Category
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields =   ['name','top_category','notes']
    list_fields =   ['name','top_category']
    display_fields =   ['name','top_category','notes']

    views_available=['create', 'list', 'delete', 'update']

    add_form = CategoryForm
    update_form = CategoryForm
    list_filter = ['top_category']

    search_fields =  ['name','notes']
    split_space_search = True
    paginate_by = 16
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class ShelfCRUD(CRUDView):
    model = Shelf
    #template_name_base='crud'
    check_login = True
    check_perms = True
    fields =   ['name','top_shelf','notes']
    list_fields =   ['name','top_shelf','notes']
    display_fields =   ['name','top_shelf','notes']

    views_available=['create', 'list', 'delete', 'update']

    #add_form = CategoryForm
    #update_form = CategoryForm

    search_fields =  ['name','top_shelf','notes']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class ItemTypeCRUD(CRUDView):
    model = ItemType
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields =   ['name','code','notes']
    list_fields =   ['name','code']
    display_fields =   ['name','code','notes']

    views_available=['create', 'list', 'delete', 'update']

    add_form = ItemTypeForm
    update_form = ItemTypeForm

    search_fields =  ['name','code','notes']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class ItemCRUD(CRUDView):
    model = Item
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields = ['name','brand','model','part_number','code','quantity','unit','picture','shelf','notes','suppliers','inventory','category','item_type']
    list_fields = ['name','brand','model','shelf','category','quantity','picture']
    display_fields = ['name','brand','model','picture','quantity','part_number','shelf','notes','suppliers','inventory','category','item_type']

    list_filter = ['owner','category','item_type','suppliers']
    views_available=['create', 'list', 'delete', 'update', 'detail']

    add_form = ItemForm
    update_form = ItemForm

    #inlines = [Tender_end_date_AjaxCRUD,Tender_content_AjaxCRUD]

    search_fields = ['name','part_number','model','brand','shelf','category__name','code']
    split_space_search = True
    paginate_by = 16
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'

class SupplierCRUD(CRUDView):
    model = Supplier
    template_name_base='crud'
    check_login = True
    check_perms = True
    fields =  ['name','address','phone_number','web','notes']
    list_fields =   ['name','address','phone_number','web']
    display_fields =   ['name','address','phone_number','web','notes']

    views_available=['create', 'list', 'delete', 'update']

    add_form = SupplierForm
    update_form = SupplierForm

    search_fields = ['name','address','phone_number','web','notes']
    split_space_search = True
    paginate_by = 15
    paginate_position = 'Bottom' # Both | Bottom
    paginate_template = 'cruds/pagination/enumeration.html'
