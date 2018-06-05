# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.utils.translation import ugettext_lazy as _
from django.db import models
from django.utils import timezone
from datetime import datetime
from django.contrib.auth.models import User,Group

class TenderType(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    code = models.CharField(default="",max_length=10, verbose_name=_(u'Code'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='create date', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Notes'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Tender Type')
        verbose_name_plural = _(u'Tender Types')

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

class Supplier(models.Model):
    name = models.CharField(max_length=32,unique=True, verbose_name=_(u'Supplier'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Address'))
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Phone'))
    web = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Web'))
    notes = models.TextField(null=True, blank=True, verbose_name=(u'Notes'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Tedarikçi')
        verbose_name_plural = _(u'Tedarikçiler')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('supplier_view', [str(self.id)])


class Tender(models.Model):
    name = models.CharField(verbose_name=_(u'İhale Adı'), max_length=200)
    no = models.CharField(verbose_name=_(u'Şartname No'), max_length=32, null=True, blank=True)
    tender_type = models.ForeignKey(TenderType, verbose_name=_(u'İhale türü'),null=True,on_delete=models.SET_NULL)

    approximate_price = models.FloatField(verbose_name=_(u'Yaklaşık Bedel'),default=0,null=True)

    currency = models.ForeignKey(Currency, verbose_name=_(u'Döviz kuru'),null=True,on_delete=models.SET_NULL)

    apply_date = models.DateTimeField(default=timezone.now,verbose_name='Başvuru tarihi', editable=True,null=True, blank=True)

    tender_status = models.ForeignKey(TenderStatus, verbose_name=_(u'İhale durumu'),null=True,on_delete=models.SET_NULL)

    auction_date = models.DateField(verbose_name='İhale tarihi', editable=True,null=True, blank=True)

    auction_time = models.TimeField(verbose_name='İhale saati', editable=True,null=True, blank=True)

    auction_price = models.FloatField(verbose_name=_(u'İhale Bedeli'),default=0,null=True)

    auction_no = models.CharField(verbose_name=_(u'İhale No'), max_length=32, null=True, blank=True)

    contract_date = models.DateField(verbose_name='Sözleşme tarihi', editable=True,null=True, blank=True)

    supplier = models.ForeignKey(Supplier, verbose_name=_(u'Yüklenici'),null=True,blank=True)

    user = models.ForeignKey(User, verbose_name=_(u'Personel'),blank=True,null=True,on_delete=models.SET_NULL)

    notes = models.TextField(verbose_name=_(u'Açıklama'), null=True, blank=True)

    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    deleted = models.BooleanField(default=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'İhale')
        verbose_name_plural = _(u'İhaleler')

    @models.permalink
    def get_absolute_url(self):
        return ('template_view', [str(self.id)])

    def __unicode__(self):
        return self.name

class Tender_end_date(models.Model):
    tender = models.ForeignKey(Tender, verbose_name=_(u'İhale'),null=True,on_delete=models.SET_NULL)
    timedate = models.DateField(verbose_name=_(u'Tarih'))
    notify = models.BooleanField(verbose_name=_(u'Mail hatırlatması'),default=True)

    class Meta:
        verbose_name = _(u'iş teslim tarihi')
        verbose_name_plural = _(u'iş teslim tarihleri')

    def __unicode__(self):
        return unicode(self.timedate)

class TenderContent(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    tender = models.ForeignKey(Tender, verbose_name=_(u'Tender'),null=True,on_delete=models.SET_NULL)
    quantity = models.FloatField(default=0, verbose_name=_(u'Quantity'))
    unit = models.ForeignKey(Unit, verbose_name=_(u'Unit'),null=True,on_delete=models.SET_NULL)
    price = models.FloatField(default=0, verbose_name=_(u'Price'))
    currency = models.ForeignKey(Currency, verbose_name=_(u'Currency'),null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Alım türü')
        verbose_name_plural = _(u'Alım Türleri')

    def __unicode__(self):
        return self.name

class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Tarih-Saat'))
    action = models.CharField(max_length=32, verbose_name=_(u'Hareket'))
    description = models.TextField(verbose_name=_(u'Açıklama'), null=True, blank=True)

    item = models.ForeignKey(Tender, verbose_name=_(u'İhale'),null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User, verbose_name=_(u'Personel'),null=True,on_delete=models.SET_NULL)


class TravellingExpense(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Name'))
    surname = models.CharField(max_length=50, verbose_name=_(u'Surname'))
    institution = models.CharField(max_length=50, verbose_name=_(u'Institution'))
    start_date = models.DateField(verbose_name='Event Start Date', editable=True,null=True, blank=True)
    end_date = models.DateField(verbose_name='Event End Date', editable=True,null=True, blank=True)
    location = models.CharField(max_length=50, verbose_name=_(u'Event Location'))

    price = models.FloatField(verbose_name=_(u'Price'),default=0,null=True)
    currency = models.ForeignKey(Currency, verbose_name=_(u'Currency'),null=True,on_delete=models.SET_NULL)

    payment_date = models.DateField(verbose_name='Payment Date', editable=True,null=True, blank=True)

    notes = models.TextField(verbose_name=_(u'Notes'), null=True, blank=True)

    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Travelling Expense')
        verbose_name_plural = _(u'Travelling Expenses')

    def __unicode__(self):
        return self.name + self.surname
