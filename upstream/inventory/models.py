# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.utils import timezone
from datetime import datetime
import personnel.models

class Location(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Yer ismi'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Adres'))
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Telefon'))
    phone_number2 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone number'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Location')
        verbose_name_plural = _(u'Locations')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('location_view', [str(self.id)])

class Inventory(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Depo ismi'))
    location = models.ForeignKey(Location,null=True, verbose_name=_(u'Yer'),on_delete=models.SET_NULL)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Açıklama'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)


    class Meta:
        verbose_name = _(u'Inventory')
        verbose_name_plural = _(u'Inventories')

    @models.permalink
    def get_absolute_url(self):
        return ('inventory_view', [str(self.id)])

    def __unicode__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Kategori ismi'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    top_category = models.ForeignKey('self',null=True,blank=True, verbose_name=_(u'Üst kategori'),on_delete=models.SET_NULL)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Açıklama'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Category')
        verbose_name_plural = _(u'Categories')

    def __unicode__(self):
        return self.name

class ItemType(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Malzeme Çeşit ismi'))
    code = models.IntegerField(default=0, verbose_name=_(u'Malzeme Kodu'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Açıklama'))

    def __unicode__(self):
        return self.name

class Item(models.Model):
    name = models.CharField(verbose_name=_(u'Malzeme Adı'), max_length=64)
    brand = models.CharField(verbose_name=_(u'Marka'), max_length=32, null=True, blank=True)
    model = models.CharField(verbose_name=_(u'Model'), max_length=32, null=True, blank=True)
    part_number = models.CharField(verbose_name=_(u'Parça Numarası'), max_length=32, null=True, blank=True)
    user = models.ForeignKey(personnel.models.Personnel, verbose_name=_(u'Personel'),null=True,on_delete=models.SET_NULL)
    notes = models.TextField(verbose_name=_(u'Açıklama'), null=True, blank=True)
    suppliers = models.ManyToManyField('Supplier', blank=True, verbose_name=_(u'Tedarikçi'))
    inventory = models.ForeignKey(Inventory, null=True, blank=True, verbose_name=_(u'Depo'),on_delete=models.SET_NULL)
    category = models.ForeignKey(Category, verbose_name=_(u'Kategori'),null=True,on_delete=models.SET_NULL)
    item_type = models.ForeignKey(ItemType, verbose_name=_(u'Malzeme çeşidi'),null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    deleted = models.BooleanField(default=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Item')
        verbose_name_plural = _(u'Items')

    @models.permalink
    def get_absolute_url(self):
        return ('template_view', [str(self.id)])

    def __unicode__(self):
        return self.name



class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Tarih-Saat'))
    action = models.CharField(max_length=32, verbose_name=_(u'Hareket'))
    description = models.TextField(verbose_name=_(u'Açıklama'), null=True, blank=True)

    item = models.ForeignKey(Item, verbose_name=_(u'Malzeme'),null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(personnel.models.Personnel, verbose_name=_(u'Personel'),null=True,on_delete=models.SET_NULL)




class Supplier(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Tedarikçi Firma'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Adres'))
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Telefon'))
    web = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Web'))
    notes = models.TextField(null=True, blank=True, verbose_name=(u'Açıklama'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Supplier')
        verbose_name_plural = _(u'Suppliers')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('supplier_view', [str(self.id)])
