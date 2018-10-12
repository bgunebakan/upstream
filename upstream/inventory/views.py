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
###
from reportlab.graphics.barcode import code39, code128, code93
from reportlab.graphics.barcode import eanbc, qr, usps
from reportlab.graphics.shapes import Drawing
from reportlab.lib.pagesizes import letter
from reportlab.lib.units import mm
from reportlab.pdfgen import canvas
from reportlab.graphics import renderPDF
from django.http import HttpResponse, HttpResponseNotFound
from io import BytesIO
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont

def createBarCodes(item_name,item_code,owner_code,item_type,url):

    buffer = BytesIO()
    c = canvas.Canvas(buffer, pagesize=letter)

    c.setPageSize((30 * mm, 60 * mm))
    pdfmetrics.registerFont(TTFont('Arimo-Regular', 'static/label-fonts/Arimo-Regular.ttf'))
    c.setFont('Arimo-Regular', 8)
    c.saveState()
    c.translate(0,0)
    c.rotate(90)
    c.drawString(24*mm,-10*mm,unicode(item_name))

    #c.drawString(24*mm,25*mm,item_type + "-" + owner_code + ":" + item_code)
    c.drawString(24*mm,-15*mm,"SN:" + item_code)
    c.restoreState()

    #barcode=code128.Code128(item_type+owner_code+item_code,barWidth=0.35*mm,barHeight=5*mm)
    # drawOn puts the barcode on the canvas at the specified coordinates
    #barcode.drawOn(c,0.01*mm,0.1*mm)

    # draw a QR code
    qr_code = qr.QrCodeWidget(url+"?sn_code="+item_type+owner_code+item_code)
    bounds = qr_code.getBounds()
    width = bounds[2] - bounds[0]
    height = bounds[3] - bounds[1]
    d = Drawing(70, 70, transform=[70./width,0,0,70./height,0,0])
    d.add(qr_code)
    renderPDF.draw(d, c, 5, 0)


    c.showPage()
    c.save()

    pdf = buffer.getvalue()
    buffer.close()
    return pdf


@login_required
def index(request):
    return HttpResponseRedirect('/inventory/item/list')

@login_required
def item_label_print(request):

    item_name = unicode(request.GET.get("item_name", ""))
    item_code = unicode(request.GET.get("item_code", ""))
    owner_code = unicode(request.GET.get("owner_code", ""))
    item_type = unicode(request.GET.get("item_type", ""))
    url = "https://internal.tarla.org.tr/inventory/find/item/"

    # item_name = "Limitleyici"
    # item_code = "012231232131"
    # owner_code = "T"
    # item_type = "C"

    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'inline; filename="'+item_type+owner_code+item_code+'.pdf"'

    pdf = createBarCodes(item_name,item_code,owner_code,item_type,url)
    response.write(pdf)
    return response

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
