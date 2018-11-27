# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
import os
from uuid import uuid4
from django.utils.deconstruct import deconstructible

from django.contrib.auth.models import User,Group
from django_countries.fields import CountryField
from django.db.models.query import QuerySet
from django.utils import timezone
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils.translation import ugettext_lazy as _
from image_cropping import ImageCropField, ImageRatioField
#from auditlog.registry import auditlog
from filer.fields.image import FilerImageField
from filer.fields.file import FilerFileField

class SoftDeleteManager(models.Manager):

    def get_query_set(self):
        return QuerySet(self.model, using=self._db).filter(deleted=False)

    def filter(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

    def all(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

@deconstructible
class UploadToPathAndRename(object):

    def __init__(self, path):
        self.sub_path = path

    def __call__(self, instance, filename):
        ext = filename.split('.')[-1]
        # get filename
        if instance.pk:
            filename = '{}.{}'.format(instance.nat_id, ext)
        else:
            # set filename as random string
            filename = '{}.{}'.format(uuid4().hex, ext)
        # return the whole path to the file
        return os.path.join(self.sub_path, filename)



class Personnel_type(models.Model):
    name = models.CharField(
        max_length=30,
        error_messages={
        'unique': 'That personnel type is already saved.'
        }
        ,verbose_name = "Personnel Type"
    )
    slug = models.CharField(max_length=30,verbose_name = "Slug",blank=True,null=True)
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
    def get_absolute_url(self):
        return "/personnel/"



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

    user = models.OneToOneField(User,null=True,blank=True, on_delete=models.CASCADE,verbose_name="Username")
    name = models.CharField(max_length=30,verbose_name = "Name")
    surname = models.CharField(max_length=30,verbose_name = "Surname")
    country = CountryField(verbose_name = "Country",null=True,blank=True,default='TR')
    nat_id = models.CharField(max_length=12,unique=True,verbose_name = "Nat ID")
    gender = models.IntegerField(choices=Gender, default=1,verbose_name = "Gender")
    birth_date = models.DateField(null=True,blank=True,verbose_name="Birth date")
    department = models.CharField(max_length=30,null=True,blank=True,verbose_name = "Department")
    title = models.CharField(max_length=30,verbose_name = "Title",null=True,blank=True)
    job = models.CharField(max_length=30,verbose_name = "Job",null=True,blank=True)
    phone_number1 = models.CharField(max_length=30,blank=True,verbose_name = "Job Phone",null=True)
    phone_number2 = models.CharField(max_length=30,blank=True,verbose_name = "Mobile Phone",null=True)
    email = models.EmailField(max_length=50,verbose_name = "E-mail",null=True,blank=True)
    address = models.TextField(max_length=300,null=True,verbose_name = "Address",blank=True)
    marital_status = models.IntegerField(choices=Marital_status, default=1,verbose_name = "Marital Status")

    drive_licence = models.IntegerField(choices=Drive_licence, default=1,verbose_name = "Drive Licence")
    health_status = models.FileField(upload_to=UploadToPathAndRename(os.path.join('health_status')),null=True,blank=True,verbose_name = "Health Status")

    extra_file1 = models.FileField(upload_to=UploadToPathAndRename(os.path.join('extra_file1')),null=True,blank=True,verbose_name = "Extra file 1")
    extra_file2 = models.FileField(upload_to=UploadToPathAndRename(os.path.join('extra_file2')),null=True,blank=True,verbose_name = "Extra file 2")
    extra_file3 = models.FileField(upload_to=UploadToPathAndRename(os.path.join('extra_file3')),null=True,blank=True,verbose_name = "Extra file 3")
    #identifier = models.OneToOneField('tarlaguard.Identifier',null=True,blank=True,on_delete=models.CASCADE,verbose_name = "Kart No")
    profile_picture = models.ImageField(upload_to=UploadToPathAndRename(os.path.join('profile_pictures')),null=True,blank=True,default='profile_pictures/profile.png',verbose_name = "Profile Picture")
    #profile_picture = FilerImageField(null=True, blank=True,related_name="profile_picture")
    user_file = models.FileField(upload_to=UploadToPathAndRename(os.path.join('personnel_cv')),null=True,blank=True,verbose_name = "Personnel PDF")
    #user_file = FilerFileField(null=True, blank=True,related_name="user_file")

    notes = models.TextField(max_length=300,verbose_name = "Notes",null=True,blank=True)
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
    def get_absolute_url(self):
        return "/personnel/personnel/%i" % self.id

class Personnel_file(models.Model):
    name = models.CharField(
        max_length=30,
        error_messages={
        'unique': 'That personnel file name is already saved.'
        }
        ,verbose_name = "File Name"
    )
    slug = models.CharField(max_length=30,verbose_name = "Slug",blank=True,null=True)
    file = models.FileField(upload_to=UploadToPathAndRename(os.path.join('user_file')),null=True,blank=True,verbose_name = "File")
    personnel = models.ForeignKey(Personnel, null=True,on_delete=models.SET_NULL,verbose_name = "User")
    created_date = models.DateTimeField(default=timezone.now)
    deleted = models.BooleanField(default=False,verbose_name = "deleted")

    objects = SoftDeleteManager()
    class Meta:
        ordering = ['name']
        verbose_name = _(u'User file')
        verbose_name_plural = _(u'User files')

    def delete(self, *args, **kwargs):
#        self.total = total - 1
        self.deleted=True
        self.save()
        return

    def __unicode__(self):
        return self.name
    def get_absolute_url(self):
        return "/personnel/personnel/%i" % self.personnel.id

class Annual_leave(models.Model):
    user = models.ForeignKey(User, verbose_name=_(u'User'),null=True,on_delete=models.SET_NULL)
    start_date = models.DateField(verbose_name=_(u'Start Date'))
    end_date = models.DateField(verbose_name=_(u'End Date'))
    notes = models.TextField(max_length=300,verbose_name = "Notes",null=True,blank=True)
    approved = models.BooleanField(default=False,blank=True,verbose_name = "Approved")
    class Meta:
        verbose_name = _(u'Annual Leave')
        verbose_name_plural = _(u'Annual Leaves')

    def __unicode__(self):
        return unicode(self.user.get_full_name()) +" : "+ unicode(self.start_date) +" - "+ unicode(self.end_date)

    def get_absolute_url(self):
        return "/personnel/annual_leave/list"
