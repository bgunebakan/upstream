# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.utils import timezone
from datetime import datetime
from django.contrib.auth.models import User,Group
from django.utils.deconstruct import deconstructible
import os
from uuid import uuid4

@deconstructible
class UploadToPathAndRename(object):

    def __init__(self, path):
        self.sub_path = path

    def __call__(self, instance, filename):
        ext = filename.split('.')[-1]
        # get filename
        if instance.pk:
            filename = '{}.{}'.format(instance.id, ext)
        else:
            # set filename as random string
            filename = '{}.{}'.format(uuid4().hex, ext)
        # return the whole path to the file
        return os.path.join(self.sub_path, filename)

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

    def get_absolute_url(self):
        return "/inventory/location/list"

class Inventory(models.Model):
    name = models.CharField(max_length=32, verbose_name=_(u'Name'))
    location = models.ForeignKey(Location,null=True, verbose_name=_(u'Location'),on_delete=models.SET_NULL)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)


    class Meta:
        verbose_name = _(u'Inventory')
        verbose_name_plural = _(u'Inventories')

    def get_absolute_url(self):
        return "/inventory/inventory/list"

    def __unicode__(self):
        return self.name

class Unit(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Unit name'))
    short_name = models.CharField(max_length=5, verbose_name=_(u'slug'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Unit')
        verbose_name_plural = _(u'Units')

    def get_absolute_url(self):
        return "/inventory/unit/%i/update" % self.id

    def __unicode__(self):
        return self.name

class Category(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    code = models.CharField(max_length=20,default="01", verbose_name=_(u'Code'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    top_category = models.ForeignKey('self',null=True,blank=True, verbose_name=_(u'Top Category'),on_delete=models.SET_NULL)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Category')
        verbose_name_plural = _(u'Categories')

    def get_absolute_url(self):
        return "/inventory/item/list?category=%i" % self.id

    def __unicode__(self):
        return self.name

class Room(models.Model):
    name = models.CharField(max_length=50, verbose_name='Name',default="")
    code = models.CharField(max_length=5,default="A", verbose_name=_(u'Code'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    location = models.ForeignKey(Location,null=True,blank=True, verbose_name=_(u'Location'),on_delete=models.SET_NULL)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Room')
        verbose_name_plural = _(u'Rooms')

    def get_absolute_url(self):
        return "/inventory/room/%i/update" % self.id

    def __unicode__(self):
        return self.name


class Shelf(models.Model):
    name = models.CharField(max_length=50, verbose_name='Name',default="")
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    top_shelf = models.ForeignKey('self',null=True,blank=True, verbose_name=_(u'Top Shelf'),on_delete=models.SET_NULL)
    room = models.ForeignKey(Room,null=True,blank=True, verbose_name=_(u'Room'),on_delete=models.SET_NULL)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Shelf')
        verbose_name_plural = _(u'Shelves')

    def get_absolute_url(self):
        return "/inventory/shelf/%i/update" % self.id

    def __unicode__(self):
        return unicode(self.room.location) + " > " + unicode(self.room) + " > " + unicode(self.name)

class ItemType(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    code = models.CharField(max_length=5,default="01", verbose_name=_(u'Code'))
    icon = models.CharField(max_length=20,default="fa-box",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="bg-yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))
    total = models.IntegerField(verbose_name="Total item",default=0)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Item Type')
        verbose_name_plural = _(u'Item Types')

    def set_total(self):
        total = 0
        for type_ in Personnel.objects.filter(personnel_type=self):
            total = total + 1
        return total

    def get_absolute_url(self):
        return "/inventory/itemtype/list"

    def __unicode__(self):
        return self.name

class ItemStatus(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    code = models.CharField(max_length=5,default="N", verbose_name=_(u'Code'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    notes = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Item Status')
        verbose_name_plural = _(u'Item Status')

    def get_absolute_url(self):
        return "/inventory/itemstatus/list"

    def __unicode__(self):
        return self.name

class Item(models.Model):
    name = models.CharField(verbose_name=_(u'Name'), max_length=64)
    brand = models.CharField(verbose_name=_(u'Brand'), max_length=32, null=True, blank=True)
    model = models.CharField(verbose_name=_(u'Model'), max_length=32, null=True, blank=True)
    part_number = models.CharField(verbose_name=_(u'Part Number'), max_length=32, null=True, blank=True)
    code = models.CharField(max_length=16,default="01", verbose_name=_(u'Code'))
    owner_code = models.CharField(max_length=1,default="T", verbose_name=_(u'Owner Code'))
    quantity = models.IntegerField(default=1, verbose_name=_(u'Quantity'))
    unit = models.ForeignKey(Unit, verbose_name=_(u'Unit'),blank=True,null=True,on_delete=models.SET_NULL)
    owner = models.ForeignKey(User, verbose_name=_(u'Owner'),blank=True,null=True,on_delete=models.SET_NULL)
    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)
    picture = models.ImageField(upload_to=UploadToPathAndRename(os.path.join('item_pictures')),null=True,blank=True,default='item_pictures/item.png',verbose_name = "Picture")
    suppliers = models.ManyToManyField('Supplier',blank=True, verbose_name=_(u'Supplier'))
    inventory = models.ForeignKey(Inventory, null=True, blank=True, verbose_name=_(u'Inventory'),on_delete=models.SET_NULL)
    category = models.ForeignKey(Category, verbose_name=_(u'Category'),null=True,on_delete=models.SET_NULL)
    shelf = models.CharField(max_length=50,null=True, blank=True, verbose_name=_(u'Shelf'))
    item_type = models.ForeignKey(ItemType, verbose_name=_(u'Item Type'),null=True,on_delete=models.SET_NULL)
    item_status = models.ForeignKey(ItemStatus, verbose_name=_(u'Item Status'),null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    deleted = models.BooleanField(default=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Item')
        verbose_name_plural = _(u'Items')

    def get_absolute_url(self):
        return "/inventory/item/%i" % self.id

    def __unicode__(self):
        return self.name



class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Time-Date'))
    action = models.CharField(max_length=32, verbose_name='Action')
    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True,max_length=200)

    item = models.ForeignKey(Item, verbose_name=_(u'Item'),null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User,related_name="action_user", verbose_name='User',blank=True,null=True,on_delete=models.SET_NULL)

    class Meta:
        ordering = ['timedate']
        verbose_name = _(u'Action')
        verbose_name_plural = _(u'Actions')

    def get_absolute_url(self):
        return "/inventory/log/%i" % self.id

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

    def get_absolute_url(self):
        return "/inventory/supplier/list"
