# -*- coding: utf-8 -*-

from django.db import models
from django.utils import timezone
from django.contrib import admin
from .utils import *
from django.db.models.query import QuerySet
from django.contrib.auth.models import User,Group
from django.utils.translation import ugettext_lazy as _

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
        verbose_name = "Name",
        error_messages={
        'unique': 'Controller name is already exist.'
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
    ip_address = models.GenericIPAddressField(unique=True,verbose_name = "IP address")
    health = models.BooleanField(default=True,verbose_name = "Health")
    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Created Date")
    updated_date = models.DateTimeField(auto_now=True,verbose_name = "Updated date")
    deleted = models.BooleanField(default=False,verbose_name = "Deleted")

    objects = SoftDeleteManager()

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Controller')
        verbose_name_plural = _(u'Controllers')

    def delete(self, *args, **kwargs):
        self.deleted=True
        self.save()
        return

    def get_absolute_url(self):
        return "/portunes/controller/%i" % self.id

    def __unicode__(self):
        return unicode(self.name) + " - "+unicode(self.mac)



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
        ,verbose_name = "Name"
    )

    entrance = models.ForeignKey('Controller', related_name="entrance_controller", null=True,on_delete=models.SET_NULL, default=None,verbose_name = "Controller")
    entrance_controller_pin = models.IntegerField(choices=PINS, default=None,verbose_name = "Controller pin")

    antipassback = models.BooleanField(default=False,verbose_name = "Antipassback")
    enter = models.BooleanField(default=True,verbose_name = "Entrance")
    description = models.TextField(max_length=100,verbose_name = "Notes",null=True,blank=True)

    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Created date")
    updated_date = models.DateTimeField(auto_now=True,verbose_name = "Updated Date")
    deleted = models.BooleanField(default=False,verbose_name = "Deleted")

    objects = SoftDeleteManager()

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Door')
        verbose_name_plural = _(u'Doors')

        permissions = (
            ('view_door', 'Can view doors'),
        )

    def get_absolute_url(self):
        return "/portunes/door/%i" % self.id

    def __unicode__(self):
        return self.entrance.name + ' -- ' + unicode(self.name)

class DoorGroup(models.Model):

    name = models.CharField(
        max_length=30,
        unique=True,
        error_messages={
            'unique': 'That door group is already saved.'
        }
    )
    doors = models.ManyToManyField(Door,verbose_name="Doors")

    created_date = models.DateTimeField(default=timezone.now)

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Door Group')
        verbose_name_plural = _(u'Door Groups')

    def get_absolute_url(self):
        return "/portunes/doorgroup/%i/update?" % self.id

    def __unicode__(self):
        return self.name


class Action(models.Model):

    user = models.ForeignKey(User,blank=True,null=True,on_delete=models.SET_NULL,verbose_name = "User")
    identifier = models.ForeignKey('Identifier',null=True,verbose_name = "Identifier",on_delete=models.SET_NULL)
    door = models.ForeignKey('door',null=True,blank=True,verbose_name = "Door",on_delete=models.SET_NULL)
    action_type = models.ForeignKey('Action_type',verbose_name = "Action Type",null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Date-time")
    deleted = models.BooleanField(default=False,verbose_name = "Deleted")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        self.deleted=True
        self.save()
        return

    class Meta:
        ordering = ['user']
        verbose_name = _(u'Action')
        verbose_name_plural = _(u'Actions')

    def get_absolute_url(self):
        return "/portunes/action/list"

    def __unicode__(self):
        message = str(self.id) + ':'
        if self.door:
            message += 'Door ' + self.door.name + ' | '
        if self.action_type:
            message += ' ' + self.action_type.message
        return message

class Action_type(models.Model):
    ACTIONS = (
            (1, 'Card Enter'),
            (2, 'Card Exit'),
            (3, 'Button Exit'),
            (4, 'Card Denied'),
            (5, 'Door Status'),
            (6, 'Lock Status'),
            (7, 'Tamper Status'),
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
    deleted = models.BooleanField(default=False,verbose_name = "Deleted")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        self.deleted=True
        self.save()
        return

    class Meta:
        ordering = ['action_type']
        verbose_name = _(u'Action Type')
        verbose_name_plural = _(u'Action Types')

    def get_absolute_url(self):
        return "/portunes/action_type/%i" % self.id

    def __unicode__(self):
        return self.message

class Identifier(models.Model):
    name = models.CharField(
        max_length=30,
        error_messages={
        'unique': 'That identifier name is already saved.'
        }
        ,verbose_name = "Name"
    )
    IdentifierType = (
            (1, 'Personnel'),
            (2, 'Visitor')
    )
    key = models.CharField(
        max_length=255,
        unique=True,
        error_messages={
        'unique': 'That identifier is already saved.'
        }
        ,verbose_name = "Key"
    )
    is_active = models.BooleanField(default=True,verbose_name = "Active")
    identifier_type = models.IntegerField(
         choices = IdentifierType,
         null=True,
         blank=True,
         verbose_name = "Card Type"
    )
    user = models.ForeignKey(User,blank=True,null=True,on_delete=models.SET_NULL)
    created_date = models.DateTimeField(default=timezone.now,verbose_name = "Created Date")
    deleted = models.BooleanField(default=False,verbose_name = "Deleted")

    objects = SoftDeleteManager()

    def delete(self, *args, **kwargs):
        print(self.key)
        permissions = Permission.objects.filter(identifier__key=self.key)
        if permissions:
            for permission in permissions:
                print(str(permission.identifier.user) + str(permission.door))
                permission.delete()

        self.deleted=True
        self.is_active=False
        self.save()
        return

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Identifier')
        verbose_name_plural = _(u'Identifiers')

        permissions = (
            ('view_identifier', 'Can view identifiers'),
        )

    def get_absolute_url(self):
        return "/portunes/access/%i" % self.user.id

    def __unicode__(self):
        return unicode(self.name) + "-" + self.key


class Permission(models.Model):
    identifier = models.ForeignKey(Identifier,null=True,on_delete=models.SET_NULL)
    door = models.ForeignKey('Door', null=True, blank=True,on_delete=models.SET_NULL)

    start_date = models.DateTimeField(null=True, blank=True)
    end_date = models.DateTimeField(null=True, blank=True)
    created_date = models.DateTimeField(default=timezone.now)

    def save(self, *args, **kwargs):

        print self.door
        if(self.door.entrance.health):
            print self.identifier
            response = send_controller('A',self.door.entrance.ip_address,unicode(self.door.entrance_controller_pin) +","+ unicode(self.identifier.key) )

            if response is True:
                super(Permission, self).save(*args, **kwargs) # Call the "real" save() method.
            else:
                return

    def delete(self, *args, **kwargs):

        print self.door
        if(self.door.entrance.health):
            response = send_controller('D',self.door.entrance.ip_address,str(self.door.entrance_controller_pin) +","+ str(self.identifier.key))

            if response is True:
                super(Permission, self).delete(*args, **kwargs)
            else:
                return
    class Meta:
        ordering = ['identifier']
        verbose_name = _(u'Permission')
        verbose_name_plural = _(u'Permissions')

    def get_absolute_url(self):
        return "/portunes/access/%i" % self.identifier.user.id

    def __unicode__(self):
        return unicode(self.identifier) + "-" + unicode(self.door)
