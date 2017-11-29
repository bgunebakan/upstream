# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.utils import timezone
from datetime import datetime


class Location(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Name'))
    address = models.TextField(max_length=200,null=True,blank=True)
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone number'))
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
    name = models.CharField(max_length=32, verbose_name=_(u'Name'))
    location = models.ForeignKey(Location, verbose_name=_(u'Location'))
    description = models.TextField(max_length=200,null=True,blank=True)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='oluşturma tarihi', editable=False)


    class Meta:
        verbose_name = _(u'Inventory')
        verbose_name_plural = _(u'Inventories')

    @models.permalink
    def get_absolute_url(self):
        return ('inventory_view', [str(self.id)])

    def __unicode__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=50)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='oluşturma tarihi', editable=False)
    top_category = models.ForeignKey('self',null=True,blank=True)
    description = models.TextField(max_length=200,null=True,blank=True)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Category')
        verbose_name_plural = _(u'Categories')

    def __unicode__(self):
        return self.name

class ItemType(models.Model):
    name = models.CharField(max_length=50)
    code = models.IntegerField(default=0)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='oluşturma tarihi', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True)

    def __unicode__(self):
        return self.name

class Item(models.Model):
    name = models.CharField(verbose_name=_(u'Name'), max_length=64)
    brand = models.CharField(verbose_name=_(u'Brand'), max_length=32, null=True, blank=True)
    model = models.CharField(verbose_name=_(u'Model'), max_length=32, null=True, blank=True)
    part_number = models.CharField(verbose_name=_(u'Part number'), max_length=32, null=True, blank=True)
    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)
    suppliers = models.ManyToManyField('Supplier', blank=True, verbose_name=_(u'Suppliers'))
    inventory = models.ForeignKey(Inventory, null=True, blank=True)
    category = models.ForeignKey(Category)
    item_type = models.ForeignKey(ItemType)


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
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Date & time'))
    action = models.CharField(max_length=32, verbose_name=_(u'Action'))
    description = models.TextField(verbose_name=_(u'Description'), null=True, blank=True)

    item = models.ForeignKey(Item)


    def __unicode__(self):
        return '%s, %s - %s' % (self.timedate, self.action, self.content_object)

    @models.permalink
    def get_absolute_url(self):
        return ('log_view', [str(self.id)])





class Supplier(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Name'))
    address = models.TextField(max_length=200,null=True,blank=True)
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone number'))
    phone_number2 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone number'))
    notes = models.TextField(null=True, blank=True, verbose_name=(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Supplier')
        verbose_name_plural = _(u'Suppliers')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('supplier_view', [str(self.id)])
