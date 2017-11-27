# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils import timezone
from django.contrib import admin
from django.contrib.auth.models import User,Group
from djrichtextfield.models import RichTextField

class Setting(models.Model):
    name = models.CharField(max_length=30,unique=True)
    value = models.CharField(max_length=100,null=True,blank=True)
    int_value = models.IntegerField(default=0,null=True,blank=True)

class Category(models.Model):
    name = models.CharField(max_length=30,unique=True)

class Post(models.Model):
    STATUS = (
            (1, 'Publish'),
            (2, 'Draft'),
            (3, 'Review'),
            (4, 'Deleted'),
    )

    title = models.CharField(max_length=30,unique=True)
    text = RichTextField()
    owner = models.ForeignKey(User)
    keywords = models.CharField(max_length=200,unique=True,null=True,blank=True)
    post_image = models.ImageField(upload_to='post_media/',null=True,default='post_media/post.png',verbose_name = "Yazı görseli")
    status = models.IntegerField(choices = STATUS,default=2)
    category = models.ForeignKey(Category,null=True,blank=True)
    created_date = models.DateTimeField(verbose_name='date created',default=timezone.now, editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='güncelleme tarihi', blank=True, editable=False)

class Menu_item(models.Model):
    MENU_TYPE = (
            (1, 'Sidebar'),
            (2, 'Main_page'),
            (3, 'Settings'),
    )
    name = models.CharField(max_length=30,unique=True)
    top_menu = models.ForeignKey('self',null=True,blank=True)
    url = models.CharField(max_length=30,unique=True)
    icon = models.CharField(max_length=30,unique=True, blank=True)
    menu_type = models.IntegerField(choices = MENU_TYPE,default=1)
