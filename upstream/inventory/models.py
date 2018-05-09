# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.utils import timezone
from datetime import datetime
from django.contrib.auth.models import User,Group


class Location(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Name'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Address'))
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone 1'))
    phone_number2 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone 2'))

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
    location = models.ForeignKey(Location,null=True, verbose_name=_(u'Location'),on_delete=models.SET_NULL)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)


    class Meta:
        verbose_name = _(u'Inventory')
        verbose_name_plural = _(u'Inventories')

    @models.permalink
    def get_absolute_url(self):
        return ('inventory_view', [str(self.id)])

    def __unicode__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    top_category = models.ForeignKey('self',null=True,blank=True, verbose_name=_(u'Top Category'),on_delete=models.SET_NULL)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Category')
        verbose_name_plural = _(u'Categories')

    def __unicode__(self):
        return self.name

class ItemType(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    code = models.IntegerField(default=0, verbose_name=_(u'Code'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    def __unicode__(self):
        return self.name

class Item(models.Model):
    name = models.CharField(verbose_name=_(u'Name'), max_length=64)
    brand = models.CharField(verbose_name=_(u'Brand'), max_length=32, null=True, blank=True)
    model = models.CharField(verbose_name=_(u'Model'), max_length=32, null=True, blank=True)
    part_number = models.CharField(verbose_name=_(u'Part Number'), max_length=32, null=True, blank=True)
    user = models.ForeignKey(User, verbose_name=_(u'User'),null=True,on_delete=models.SET_NULL)
    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)
    suppliers = models.ManyToManyField('Supplier',blank=True, verbose_name=_(u'Supplier'))
    inventory = models.ForeignKey(Inventory, null=True, blank=True, verbose_name=_(u'Inventory'),on_delete=models.SET_NULL)
    category = models.ForeignKey(Category, verbose_name=_(u'Category'),null=True,on_delete=models.SET_NULL)
    item_type = models.ForeignKey(ItemType, verbose_name=_(u'Item Type'),null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
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
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Time-Date'))
    action = models.CharField(max_length=32, verbose_name=_(u'Action'))
    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)

    item = models.ForeignKey(Item, verbose_name=_(u'Item'),null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User,related_name="action_user", verbose_name=_(u'User'),null=True,on_delete=models.SET_NULL)

    class Meta:
        ordering = ['timedate']
        verbose_name = _(u'Action')
        verbose_name_plural = _(u'Actions')

    def __unicode__(self):
        return unicode(self.user) + " " + unicode(self.item) + ' Date:' + unicode(self.timedate)


class Supplier(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Name'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Address'))
    phone_number = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone'))
    web = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Web'))
    notes = models.TextField(null=True, blank=True, verbose_name=(u'Notes'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Supplier')
        verbose_name_plural = _(u'Suppliers')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('supplier_view', [str(self.id)])
