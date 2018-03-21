# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.utils.translation import ugettext_lazy as _
from django.db import models
from django.utils import timezone
from datetime import datetime
from django.contrib.auth.models import User,Group

class TenderType(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Alım türü'))
    code = models.CharField(default="",max_length=10, verbose_name=_(u'Alım Tür Kodu'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Açıklama'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Alım türü')
        verbose_name_plural = _(u'Alım Türleri')

    def __unicode__(self):
        return self.name

class TenderStatus(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'İhale Durumu'))
    bgcolor = models.CharField(default="",max_length=10, verbose_name=_(u'Arkaplan rengi'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Açıklama'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'İhale durumu')
        verbose_name_plural = _(u'İhale durumları')

    def __unicode__(self):
        return self.name

class Currency(models.Model):
    name = models.CharField(max_length=50, verbose_name=_(u'Kur ismi'))
    short_name = models.CharField(max_length=5, verbose_name=_(u'Kısa adı'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)
    description = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Açıklama'))

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Döviz Kuru')
        verbose_name_plural = _(u'Döviz Kurları')

    def __unicode__(self):
        return self.name

class Supplier(models.Model):
    name = models.CharField(max_length=32,unique=True, verbose_name=_(u'Tedarikçi Firma'))
    address = models.TextField(max_length=200,null=True,blank=True, verbose_name=_(u'Adres'))
    phone_number1 = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Telefon'))
    web = models.CharField(max_length=32, null=True, blank=True, verbose_name=_(u'Web'))
    notes = models.TextField(null=True, blank=True, verbose_name=(u'Açıklama'))
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Oluşturma tarihi', editable=False)

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
    name = models.CharField(verbose_name=_(u'İhale Adı'), max_length=64)
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

class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Tarih-Saat'))
    action = models.CharField(max_length=32, verbose_name=_(u'Hareket'))
    description = models.TextField(verbose_name=_(u'Açıklama'), null=True, blank=True)

    item = models.ForeignKey(Tender, verbose_name=_(u'İhale'),null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User, verbose_name=_(u'Personel'),null=True,on_delete=models.SET_NULL)
