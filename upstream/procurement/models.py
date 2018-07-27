# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.utils.translation import ugettext_lazy as _
from django.db import models
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

@deconstructible
class SpecificationFileUpload(object):

    def __init__(self, path):
        self.sub_path = path

    def __call__(self, instance, filename):
        ext = filename.split('.')[-1]
        # get filename
        print "-----",instance.no
        if instance.pk:
            filename = '{}.{}'.format(unicode("Tender_"+ instance.no), ext)
        else:
            # set filename as random string
            filename = '{}.{}'.format("Tender_"+unicode(uuid4().hex), ext)
        # return the whole path to the file
        return os.path.join(self.sub_path, filename)

@deconstructible
class OfferFileUpload(object):

    def __init__(self, path):
        self.sub_path = path

    def __call__(self, instance, filename):
        ext = filename.split('.')[-1]
        # get filename
        if instance.pk:
            filename = '{}.{}'.format(unicode("Offer_"+instance.tender.no), ext)
        else:
            # set filename as random string
            filename = '{}.{}'.format("Offer_"+unicode(uuid4().hex), ext)
        # return the whole path to the file
        return os.path.join(self.sub_path, filename)

class TenderType(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    code = models.CharField(default="",max_length=10, verbose_name=_(u'Code'))
    icon = models.CharField(max_length=20,default="fa-wrench",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="bg-yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))
    total = models.IntegerField(verbose_name="Total item",default=0)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='create date', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Tender Type')
        verbose_name_plural = _(u'Tender Types')

    def get_absolute_url(self):
        return "/procurement/tendertype/%i/update" % self.id

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

    def __unicode__(self):
        return self.name
    def get_absolute_url(self):
        return "/procurement/unit/list"


class TenderStatus(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Tender Status'))
    bgcolor = models.CharField(default="",max_length=20, verbose_name=_(u'background'),help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Tender Status')
        verbose_name_plural = _(u'Tenders Status')

    def __unicode__(self):
        return self.name
    def get_absolute_url(self):
        return "/procurement/tenderstatus/list"

class Currency(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Currency'))
    short_name = models.CharField(max_length=5, verbose_name=_(u'slug'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Currency')
        verbose_name_plural = _(u'Currencies')

    def __unicode__(self):
        return self.name
    def get_absolute_url(self):
        return "/procurement/currency/list"

class Supplier(models.Model):
    name = models.CharField(max_length=32,unique=True, verbose_name=_(u'Supplier'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Address'))
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone'))
    web = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Web'))
    notes = models.TextField(null=True, blank=True, verbose_name=(u'Notes'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Supplier')
        verbose_name_plural = _(u'Suppliers')

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return "/procurement/supplier/list"


class Tender(models.Model):
    name = models.CharField(verbose_name=_(u'Name'), max_length=200)
    no = models.CharField(verbose_name='No', max_length=32, null=True, blank=True)
    tender_type = models.ForeignKey(TenderType, verbose_name=_(u'Tender Type'),null=True,on_delete=models.SET_NULL)

    approximate_price = models.FloatField(verbose_name=_(u'Approximate Price'),default=0,null=True,blank=True)

    currency = models.ForeignKey(Currency, verbose_name=_(u'Currency'),null=True,blank=True,on_delete=models.SET_NULL)

    apply_date = models.DateField(default=timezone.now,verbose_name='Apply Date', editable=True,null=True,blank=True)

    tender_status = models.ForeignKey(TenderStatus, verbose_name=_(u'Tender Status'),null=True,on_delete=models.SET_NULL)

    auction_date = models.DateField(verbose_name='Auction Date', editable=True,null=True, blank=True)

    auction_time = models.TimeField(verbose_name='Auction Time', editable=True,null=True, blank=True)

    auction_price = models.FloatField(verbose_name=_(u'Auction Price'),default=0,null=True,blank=True)

    auction_no = models.CharField(verbose_name=_(u'Auction No'), max_length=32, null=True, blank=True)

    contract_date = models.DateField(verbose_name='Contract Date', editable=True,null=True, blank=True)

    supplier = models.ForeignKey(Supplier, verbose_name=_(u'Supplier'),null=True,blank=True)

    user = models.ForeignKey(User, verbose_name=_(u'Personnel in charge'),blank=True,null=True,on_delete=models.SET_NULL)

    bap_staff = models.CharField(blank=True,null=True,verbose_name=_(u'BAP personnel'), max_length=200)

    specification = models.FileField(upload_to=SpecificationFileUpload(os.path.join('technical_specifications')),null=True,blank=True,verbose_name = "Technical Specification")

    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)

    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created Date', editable=False)
    deleted = models.BooleanField(default=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Tender')
        verbose_name_plural = _(u'Tenders')

    def get_absolute_url(self):
        return "/procurement/tender/%i/update" % self.id

    def __unicode__(self):
        return self.name

class Tender_end_date(models.Model):
    tender = models.ForeignKey(Tender, verbose_name=_(u'Tender'),null=True,on_delete=models.SET_NULL)
    timedate = models.DateField(verbose_name=_(u'Date-Time'))
    notify = models.BooleanField(verbose_name=_(u'E-mail notification'),default=True)

    class Meta:
        verbose_name = _(u'Tender Deadline')
        verbose_name_plural = _(u'Tender Deadlines')

    def __unicode__(self):
        return unicode(self.timedate)

    def get_absolute_url(self):
        return "/procurement/tender/%i/update" % self.tender.id

class TenderOffer(models.Model):
    firm = models.CharField(max_length=50, verbose_name=_(u'Firm'))
    tender = models.ForeignKey(Tender, verbose_name=_(u'Tender'),null=True,on_delete=models.SET_NULL)
    price = models.FloatField(default=0, verbose_name=_(u'Price'))
    currency = models.ForeignKey(Currency, verbose_name=_(u'Currency'),null=True,on_delete=models.SET_NULL)
    proposal_form = models.FileField(upload_to=OfferFileUpload(os.path.join('proposal_form')),null=True,blank=True,verbose_name ="Proposal form ")
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['firm']
        verbose_name = _(u'Tender Offer')
        verbose_name_plural = _(u'Tender Offers')

    def __unicode__(self):
        return unicode(self.firm) +' offer for ' + unicode(tender.no)
    def get_absolute_url(self):
        return "/procurement/tender_offer/%i/update" % self.id

class TenderContent(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    tender = models.ForeignKey(Tender, verbose_name=_(u'Tender'),null=True,on_delete=models.SET_NULL)
    quantity = models.FloatField(default=0, verbose_name=_(u'Quantity'))
    unit = models.ForeignKey(Unit, verbose_name=_(u'Unit'),null=True,on_delete=models.SET_NULL)
    price = models.FloatField(default=0, verbose_name=_(u'Unit Price'))
    currency = models.ForeignKey(Currency, verbose_name=_(u'Currency'),null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Tender Content')
        verbose_name_plural = _(u'Tender Contents')

    def __unicode__(self):
        return self.name
    def get_absolute_url(self):
        return "/procurement/tender/%i/update" % self.tender.id

class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Tarih-Saat'))
    action = models.CharField(max_length=32, verbose_name=_(u'Hareket'))
    description = models.TextField(verbose_name=_(u'Açıklama'), null=True, blank=True)

    item = models.ForeignKey(Tender, verbose_name=_(u'İhale'),null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User, verbose_name=_(u'Personel'),null=True,on_delete=models.SET_NULL)


class TravellingExpense(models.Model):
    name = models.CharField(max_length=50, verbose_name='Name')
    surname = models.CharField(max_length=50, verbose_name='Surname')
    institution = models.CharField(max_length=50, verbose_name='Institution')
    start_date = models.DateField(verbose_name='Event Start Date', editable=True,null=True, blank=True)
    end_date = models.DateField(verbose_name='Event End Date', editable=True,null=True, blank=True)
    location = models.CharField(max_length=50, verbose_name=_(u'Event Location'))
    activity_report = models.FileField(upload_to=UploadToPathAndRename(os.path.join('activity_report')),null=True,blank=True,verbose_name = "Activity Report")

    price = models.FloatField(verbose_name=_(u'Price'),default=0,null=True)
    currency = models.ForeignKey(Currency, verbose_name=_(u'Currency'),null=True,on_delete=models.SET_NULL)

    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)

    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Travelling Expense')
        verbose_name_plural = _(u'Travelling Expenses')

    def __unicode__(self):
        return self.name + self.surname

    def get_absolute_url(self):
        return "/procurement/travellingexpense/%i/update" % self.id
