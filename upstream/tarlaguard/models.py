# -*- coding: utf-8 -*-

from django.db import models
from django.utils import timezone
from django.contrib import admin
from .utils import *
from django.db.models.query import QuerySet

from personnel.models import Personnel

class SoftDeleteManager(models.Manager):

    def get_query_set(self):
        return QuerySet(self.model, using=self._db).filter(deleted=False)

    def filter(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)

    def all(self, *args, **kwargs):
        return self.get_query_set().filter(*args, **kwargs)


class Controller(models.Model):

    name = models.CharField(
        max_length=30,
        unique=True,
        default='ACP',
        verbose_name = "Kontrolcü Adı",
        error_messages={
        'unique': 'Kontrolcu ismi zaten var.'
        }

    )
    mac = models.CharField(
        max_length=17,
        unique=True,
        verbose_name = "MAC",
        error_messages={
        'unique': 'That identifier mac is already saved.'
        }


    )
    ip_address = models.GenericIPAddressField(unique=True,verbose_name = "IP adresi")
    health = models.BooleanField(default=True,verbose_name = "Durum")
    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Oluşturulma tarihi")
    updated_date = models.DateTimeField(auto_now=True,verbose_name = "Güncelleme tarihi")
    deleted = models.BooleanField(default=False,verbose_name = "Silinmiş")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        self.deleted=True
        self.save()
        return

    def __str__(self):
        return self.name+" - "+self.mac

class Door(models.Model):
    class Meta:
            unique_together = (('entrance', 'entrance_controller_pin'),)

    PINS = (
            (1, 'Pin 1'),
            (2, 'Pin 2'),
            (3, 'Pin 3'),
            (4, 'Pin 4'),
            (5, 'Pin 5'),
            (6, 'Pin 6'),
            (7, 'Pin 7'),
            (8, 'Pin 8'),
    )

    id = models.AutoField(primary_key=True)

    name = models.CharField(
        max_length=30,
        unique=True,
        error_messages={
        'unique': 'That door name is already saved.'
        }
        ,verbose_name = "Kapı ismi"
    )

    entrance = models.ForeignKey('Controller', related_name="entrance_controller", null=True,on_delete=models.SET_NULL, default=None,verbose_name = "Kontrolcü")
    entrance_controller_pin = models.IntegerField(choices=PINS, default=None,verbose_name = "Kontrolcü pin")

    antipassback = models.BooleanField(default=False,verbose_name = "Antipassback")
    enter = models.BooleanField(default=True,verbose_name = "Giriş kapısı")
    description = models.TextField(max_length=100,verbose_name = "Açıklama",null=True,blank=True)

    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Oluşturulma tarihi")
    updated_date = models.DateTimeField(auto_now=True,verbose_name = "Güncelleme tarihi")
    deleted = models.BooleanField(default=False,verbose_name = "Silinmiş")

    objects = SoftDeleteManager()

#    def delete(self, *args, **kwargs):
#        self.deleted=True
#        self.save()
#        return
    def __str__(self):
        return self.entrance.name + ' -- ' + self.name

    class Meta:
        permissions = (
            ('view_door', 'Can view doors'),
        )

class Door_group(models.Model):

    name = models.CharField(
        max_length=30,
        unique=True,
        error_messages={
            'unique': 'That door group is already saved.'
        }
    )
    doors = models.ManyToManyField(Door)

    created_date = models.DateTimeField(default=timezone.now)


    def __str__(self):
        return self.name

    class Meta:
        permissions = (
            ('view_door_groups', 'Can view door groups'),
        )

class Action(models.Model):

    personnel = models.ForeignKey('personnel.Personnel',blank=True,null=True,on_delete=models.SET_NULL,verbose_name = "Personel")
    identifier = models.ForeignKey('Identifier',null=True,verbose_name = "Kart No",on_delete=models.SET_NULL)
    door = models.ForeignKey('door',null=True,blank=True,verbose_name = "Kapı",on_delete=models.SET_NULL)
    action_type = models.ForeignKey('Action_type',verbose_name = "Hareket",null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Tarih-Saat")
    deleted = models.BooleanField(default=False,verbose_name = "Silinmiş")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        self.deleted=True
        self.save()
        return
    def __str__(self):
        message = str(self.id) + ':'
        if self.door:
            message += 'Door ' + self.door.name + ' | '
        if self.action_type:
            message += ' ' + self.action_type.message

        return message

class Action_type(models.Model):
    ACTIONS = (
            (1, 'Enter'),
            (2, 'Exit'),
            (3, 'UndefinedCard'),
            (4, 'Denied'),
            (5, 'HealthCheck')
    )

    LEVEL = (
            (1, 'DEBUG'),
            (2, 'INFO'),
            (3, 'WARNING'),
            (4, 'ERROR'),
    )

    action_type = models.IntegerField(
         choices = ACTIONS
    )
    level = models.IntegerField(
         choices = LEVEL
    )
    message = models.CharField(max_length=255,)
    created_date = models.DateTimeField(default=timezone.now)
    deleted = models.BooleanField(default=False,verbose_name = "Silinmiş")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        self.deleted=True
        self.save()
        return

    def __str__(self):
        return self.message

class Identifier(models.Model):
    name = models.CharField(
        max_length=30,
        error_messages={
        'unique': 'That identifier name is already saved.'
        }
        ,verbose_name = "Kart Adı"
    )
    IdentifierType = (
            (1, 'Personel'),
            (2, 'Ziyaretçi')
    )
    key = models.CharField(
        max_length=255,
        unique=True,
        error_messages={
        'unique': 'That identifier is already saved.'
        }
        ,verbose_name = "Kart No"
    )
    is_active = models.BooleanField(default=True,verbose_name = "Aktif")
    identifier_type = models.IntegerField(
         choices = IdentifierType,
         null=True,
         blank=True,
         verbose_name = "Kart Tipi"
    )

    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Oluşturulma tarihi")
    deleted = models.BooleanField(default=False,verbose_name = "Silinmiş")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        print(self.key)
        permissions = Permission.objects.filter(personnel__identifier__key=self.key)
        if permissions:
            for permission in permissions:
                print(str(permission.personnel.name) + str(permission.door))
                permission.delete()

        self.deleted=True
        self.is_active=False
        self.save()
        return

    def __str__(self):
        return self.name+"-"+self.key

    class Meta:
        permissions = (
            ('view_identifier', 'Can view identifiers'),
        )

class Permission(models.Model):
    personnel = models.ForeignKey('personnel.Personnel',null=True,on_delete=models.SET_NULL)
    door = models.ForeignKey('Door', null=True, blank=True,on_delete=models.SET_NULL)

    start_date = models.DateTimeField(null=True, blank=True)
    end_date = models.DateTimeField(null=True, blank=True)
    created_date = models.DateTimeField(default=timezone.now)

    def save(self, *args, **kwargs):
        response = send_controller('A',self.door.entrance.ip_address,str(self.door.entrance_controller_pin) +","+ str(self.personnel.identifier.key) )

        if response is True:
            super(Permission, self).save(*args, **kwargs) # Call the "real" save() method.
        else:
            return

    def delete(self, *args, **kwargs):
        response = send_controller('D',self.door.entrance.ip_address,str(self.door.entrance_controller_pin) +","+ str(self.personnel.identifier.key))

        if response is True:
            super(Permission, self).delete(*args, **kwargs)
        else:
            return
