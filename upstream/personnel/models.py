# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User
from django_countries.fields import CountryField
from phonenumber_field.modelfields import PhoneNumberField
from django.db.models.query import QuerySet

class SoftDeleteManager(models.Manager):

    def get_query_set(self):
        return QuerySet(self.model, using=self._db).filter(deleted=False)

    def filter(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

    def all(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

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
    Military_situation = (
            (1, 'Belirtilmemiş'),
            (2, 'Yaptı'),
            (3, 'Yapmadı'),
            (4, 'Tecilli')
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

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=30,verbose_name = "İsim")
    surname = models.CharField(max_length=30,verbose_name = "Soyisim")
    country = CountryField(verbose_name = "Uyruğu",null=True)
    nat_id = models.CharField(max_length=12,unique=True,verbose_name = "TC No")
    gender = models.IntegerField(choices=Gender, default=1,verbose_name = "Cinsiyet")
    department = models.CharField(max_length=30,null=True,blank=True,verbose_name = "Departman")
    title = models.CharField(max_length=30,verbose_name = "Ünvan",null=True,blank=True)
    job = models.CharField(max_length=30,verbose_name = "Görev",null=True,blank=True)
    phone_number1 = PhoneNumberField(blank=True,verbose_name = "Telefon 1",null=True,default='+90')
    phone_number2 = PhoneNumberField(blank=True,verbose_name = "Telefon 2",null=True,default='+90')
    email = models.EmailField(max_length=30,verbose_name = "E-posta",null=True,blank=True)
    address = models.TextField(max_length=50,null=True,verbose_name = "Adres",blank=True)
    marital_status = models.IntegerField(choices=Marital_status, default=1,verbose_name = "Medeni hali")
    military_situation = models.IntegerField(choices=Military_situation, default=1,verbose_name = "Askerlik Durumu")
    drive_licence = models.IntegerField(choices=Drive_licence, default=1,verbose_name = "Sürücü Belgesi")
    health_status = models.CharField(max_length=50,null=True,verbose_name = "Sağlık Durumu",blank=True)

    identifier = models.OneToOneField('tarlaguard.Identifier',null=True,on_delete=models.CASCADE,verbose_name = "Kart No")
    profile_picture = models.ImageField(upload_to='profile_pictures/',null=True,default='profile_pictures/profile.png',verbose_name = "Profil Fotoğrafı")
    user_file = models.FileField(upload_to='personnel_pdf/',null=True,blank=True,verbose_name = "Personel PDF")
    description = models.TextField(max_length=100,verbose_name = "Açıklama",null=True,blank=True)
    total_workday = models.IntegerField(verbose_name = "Toplam iş günü",default=0)
    total_workhour = models.IntegerField(verbose_name = "Toplam iş saati",default=0)
    deleted = models.BooleanField(default=False,verbose_name = "Silinmiş")

    objects = SoftDeleteManager()

    def __unicode__(self):
        return self.name+" "+self.surname

    def delete(self, *args, **kwargs):
        self.deleted=True
        permissions = Permission.objects.filter(personnel=self)
        for permission in permissions:
            permission.delete()
	    self.identifier = None
        self.save()
        return
