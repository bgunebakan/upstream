# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.utils import timezone
from django.utils.translation import ugettext_lazy as _

from django.db import models

class SoftDeleteManager(models.Manager):

    def get_query_set(self):
        return QuerySet(self.model, using=self._db).filter(enable=True)

    def filter(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

    def all(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

class Department(models.Model):

    enable = models.BooleanField(default=False,verbose_name = "Enable")

    depnum = models.CharField(max_length=16,verbose_name = "Dep Num")
    name = models.CharField(max_length=50,verbose_name = "Name")

    created_date = models.DateTimeField(default=timezone.now,verbose_name="Created date")

    objects = SoftDeleteManager()
    class Meta:
        ordering = ['name']
        verbose_name = _(u'Department')
        verbose_name_plural = _(u'Departments')

    def __unicode__(self):
        return self.name + " " + self.depnum

    def delete(self, *args, **kwargs):
        self.enable=False
        self.save()
        return

class Person(models.Model):

    enable = models.BooleanField(default=False,verbose_name = "Enable")

    surname = models.CharField(max_length=30,verbose_name = "Surname")
    firstname = models.CharField(max_length=30,verbose_name = "Name")
    title = models.CharField(max_length=30,verbose_name = "Title",null=True,blank=True)
    visitor = models.BooleanField(default=False,verbose_name = "Visitor")

    birthdate = models.DateField(null=True,blank=True,verbose_name="Birth date")
    personnum = models.CharField(max_length=30,null=True,blank=True,verbose_name = "Personnel Number")
    cardnum = models.CharField(max_length=20,null=True,blank=True,verbose_name = "Card Number")
    department = models.ForeignKey(Department, null=True,blank=True,on_delete=models.SET_NULL,verbose_name = "Department")

    titleafter = models.CharField(max_length=30,null=True,blank=True,verbose_name = "Title After")

    created_date = models.DateTimeField(default=timezone.now,verbose_name="Created date")

    objects = SoftDeleteManager()
    class Meta:
        ordering = ['firstname']
        verbose_name = _(u'Person')
        verbose_name_plural = _(u'Persons')

    def __unicode__(self):
        return self.firstname + " " + self.surname

    def delete(self, *args, **kwargs):
        self.enable=False
        self.save()
        return

class Visit(models.Model):
    hN_STATE = models.CharField(max_length=30,verbose_name = "Hn State")
    enteR_TIME = models.DateTimeField(verbose_name="Enter Time")
    dS_STATE = models.CharField(max_length=30,verbose_name = "Ds State")
    exiT_PLACE = models.IntegerField(verbose_name="Exit Place",default=0)
    duration = models.IntegerField(verbose_name="Duration",default=0)
    hP_STATE = models.IntegerField(verbose_name="Hp State",default=0)
    enteR_PLACE = models.IntegerField(verbose_name="Enter Place",default=0)
    dN_TIME = models.CharField(max_length=30,verbose_name = "Dn Time")
    dS_TIME = models.CharField(max_length=30,verbose_name = "Ds Time")
    department = models.ForeignKey(Department, null=True,on_delete=models.SET_NULL,verbose_name = "Department")
    dn = models.CharField(max_length=30,verbose_name = "Dn")
    #visiT_ID = models.IntegerField(verbose_name="Visit ID",default=0)
    hs = models.CharField(max_length=30,verbose_name = "hs")
    hp = models.IntegerField(verbose_name="hp",default=0)
    dP_TIME = models.CharField(max_length=30,verbose_name = "dp Time")
    hn = models.CharField(max_length=30,verbose_name = "hn")
    ds = models.CharField(max_length=30,verbose_name = "ds")
    dp = models.IntegerField(verbose_name="dp",default=0)
    e = models.IntegerField(verbose_name="e",default=0)
    dN_STATE = models.CharField(max_length=30,verbose_name = "dn state")
    exiT_TIME = models.DateTimeField(verbose_name="Exit Time")
    dP_STATE = models.IntegerField(verbose_name="dp state",default=0)
    person = models.ForeignKey(Person, null=True,on_delete=models.SET_NULL,verbose_name = "Person")
    hS_STATE = models.CharField(max_length=30,verbose_name = "hs state")

    class Meta:
        ordering = ['enteR_TIME']
        verbose_name = _(u'Visit')
        verbose_name_plural = _(u'Visits')

    def __unicode__(self):
        return self.enteR_TIME + " " + self.exiT_TIME

    def delete(self, *args, **kwargs):
        return
