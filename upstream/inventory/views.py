# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from personnel.models import Personnel
from .forms import *
from django.http import HttpResponseRedirect
from .tables import *
from django_tables2 import RequestConfig
from cruds_adminlte.crud import CRUDView

@login_required
def index(request):
    #personnel,created = Personnel.objects.get_or_create(user=request.user)
    #form = list(ItemForm())
        return HttpResponseRedirect('/inventory/item/list')
    #return render(request, 'inventory/dashboard.html',{'personnel': personnel,'form': form})


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
    paginate_by = 15
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
    fields = ['name','brand','model','part_number','quantity','unit','picture','shelf','notes','suppliers','inventory','category','item_type']
    list_fields = ['name','brand','model','shelf','category','quantity','picture']
    display_fields = ['name','brand','model','picture','quantity','part_number','shelf','notes','suppliers','inventory','category','item_type']

    list_filter = ['owner','category','item_type','suppliers']
    views_available=['create', 'list', 'delete', 'update', 'detail']

    add_form = ItemForm
    update_form = ItemForm

    #inlines = [Tender_end_date_AjaxCRUD,Tender_content_AjaxCRUD]

    search_fields = ['name','part_number','model','brand','shelf','category__name']
    split_space_search = True
    paginate_by = 15
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
