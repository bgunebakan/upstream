# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User
from django_countries.fields import CountryField
from phonenumber_field.modelfields import PhoneNumberField
from django.db.models.query import QuerySet
from django.utils import timezone
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils.translation import ugettext_lazy as _
from image_cropping import ImageCropField, ImageRatioField
from auditlog.registry import auditlog

class SoftDeleteManager(models.Manager):

    def get_query_set(self):
        return QuerySet(self.model, using=self._db).filter(deleted=False)

    def filter(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

    def all(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

class Personnel_type(models.Model):
    name = models.CharField(
        max_length=30,
        error_messages={
        'unique': 'That personnel type is already saved.'
        }
        ,verbose_name = "Personnel Type"
    )
    slug = models.CharField(max_length=30,verbose_name = "Slug")
    icon = models.CharField(max_length=20,default="fa-users",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="bg-yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))
    total = models.IntegerField(verbose_name="Total user",default=0)
    created_date = models.DateTimeField(default=timezone.now)
    deleted = models.BooleanField(default=False,verbose_name = "deleted")

    objects = SoftDeleteManager()
    class Meta:
        ordering = ['name']
        verbose_name = _(u'User type')
        verbose_name_plural = _(u'User types')

    def delete(self, *args, **kwargs):
#        self.total = total - 1
        self.deleted=True
        self.save()
        return

    def set_total(self):
        total = 0
        for type_ in Personnel.objects.filter(personnel_type=self):
            total = total + 1
        return total

    def __unicode__(self):
        return self.name

class Personnel(models.Model):
    Gender = (
            (1, 'Belirtilmemiş'),
            (2, 'Kadın'),
            (3, 'Erkek')
    )
    Marital_status = (
            (1, 'Belirtilmemiş'),
            (2, 'Evli'),
            (3, 'Bekar')
    )
    #Military_situation = (
    #        (1, 'Belirtilmemiş'),
    #        (2, 'Yaptı'),
    #        (3, 'Yapmadı'),
    #        (4, 'Tecilli')
    #)
    Drive_licence = (
            (1, 'Belirtilmemiş'),
            (2, 'A'),
            (3, 'A1'),
            (4, 'A2'),
            (5, 'B'),
            (6, 'B1'),
            (7, 'C'),
            (8, 'D'),
            (9, 'E'),
    )

    user = models.OneToOneField(User,null=True,blank=True, on_delete=models.CASCADE,verbose_name="Ldap")
    name = models.CharField(max_length=30,verbose_name = "Name")
    surname = models.CharField(max_length=30,verbose_name = "Surname")
    country = CountryField(verbose_name = "Country",null=True,blank=True)
    nat_id = models.CharField(max_length=12,unique=True,verbose_name = "Nat ID")
    gender = models.IntegerField(choices=Gender, default=1,verbose_name = "Gender")
    birth_date = models.DateField(null=True,blank=True,verbose_name="Birth date")
    department = models.CharField(max_length=30,null=True,blank=True,verbose_name = "Department")
    title = models.CharField(max_length=30,verbose_name = "Title",null=True,blank=True)
    job = models.CharField(max_length=30,verbose_name = "Job",null=True,blank=True)
    phone_number1 = models.CharField(max_length=30,blank=True,verbose_name = "Job Phone",null=True)
    phone_number2 = models.CharField(max_length=30,blank=True,verbose_name = "Mobile Phone",null=True)
    email = models.EmailField(max_length=30,verbose_name = "E-mail",null=True,blank=True)
    address = models.TextField(max_length=50,null=True,verbose_name = "Address",blank=True)
    marital_status = models.IntegerField(choices=Marital_status, default=1,verbose_name = "Marital Status")
    #military_situation = models.IntegerField(choices=Military_situation, default=1,verbose_name = "Askerlik Durumu")
    drive_licence = models.IntegerField(choices=Drive_licence, default=1,verbose_name = "Drive Licence")
    health_status = profile_picture = models.ImageField(upload_to='health_status/',null=True,blank=True,verbose_name = "Health Status")

    #identifier = models.OneToOneField('tarlaguard.Identifier',null=True,blank=True,on_delete=models.CASCADE,verbose_name = "Kart No")
    profile_picture = models.ImageField(upload_to='profile_pictures/',null=True,default='profile_pictures/profile.png',verbose_name = "Profile Picture")
    user_file = models.FileField(upload_to='personnel_pdf/',null=True,blank=True,verbose_name = "Personnel PDF")
    notes = models.TextField(verbose_name = "Notes",null=True,blank=True)
    cv = models.TextField(verbose_name = "CV",null=True,blank=True)
    total_workday = models.IntegerField(verbose_name = "Total work day",default=0)
    total_workhour = models.IntegerField(verbose_name = "Total work hour",default=0)
    total_dose = models.IntegerField(verbose_name = "Total dose",default=0)

    personnel_type = models.ForeignKey(Personnel_type, null=True,on_delete=models.SET_NULL,verbose_name = "User Type")

    created_date = models.DateTimeField(default=timezone.now,verbose_name="Created date")

    deleted = models.BooleanField(default=False,verbose_name = "Deleted")


    objects = SoftDeleteManager()
    class Meta:
        ordering = ['name']
        verbose_name = _(u'User')
        verbose_name_plural = _(u'Users')

    def __unicode__(self):
        return self.name + " " + self.surname

    def delete(self, *args, **kwargs):
        self.deleted=True
        #permissions = Permission.objects.filter(personnel=self)
        #for permission in permissions:
        #    permission.delete()
        #self.identifier = None
        self.save()
        return

auditlog.register(Personnel)
auditlog.register(Personnel_type)
