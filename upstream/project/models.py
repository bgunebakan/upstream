# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib.auth.models import User,Group
from django.db import models
from django.utils import timezone
from datetime import datetime
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _

class Project(models.Model):
    name = models.CharField(max_length=50)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='oluşturma tarihi', editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='güncelleme tarihi', blank=True, editable=False)
    top_project = models.ForeignKey('self',null=True,blank=True,on_delete=models.SET_NULL)
    owner = models.ForeignKey(User,null=True,on_delete=models.SET_NULL)
    group = models.ForeignKey(Group,null=True,blank=True,on_delete=models.SET_NULL)
    description = models.TextField(max_length=200,null=True,blank=True)

    def __unicode__(self):
        return self.name

class Tasktype(models.Model):
    name = models.CharField(max_length=50)
    icon = models.CharField(max_length=20,default="fa-users",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="bg-yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))

    def __unicode__(self):
        return self.name

class Statustype(models.Model):
    name = models.CharField(max_length=50)
    icon = models.CharField(max_length=20,default="fa-users",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="bg-yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))
    def __unicode__(self):
        return self.name

class Task(models.Model):
    name = models.CharField(max_length=50)

    created_date = models.DateTimeField(verbose_name='date created',default=timezone.now, editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='update date', blank=True, editable=False)
    start_date = models.DateTimeField(default=timezone.now,verbose_name='start date')
    end_date = models.DateTimeField('end date')
    percent_done = models.PositiveSmallIntegerField(default=0,null=True,blank=True,verbose_name="percent done")

    top_task = models.ForeignKey('self',null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Top Task")
    project = models.ForeignKey(Project,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Project")
    owner = models.ForeignKey(User,null=True,on_delete=models.SET_NULL,verbose_name="Owner")
    group = models.ForeignKey(Group,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Group")

    task_type = models.ForeignKey(Tasktype,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Task type")
    status = models.ForeignKey(Statustype,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Status")

    description = models.TextField(max_length=200,null=True,blank=True,verbose_name="Notes")

    def __unicode__(self):
        return self.name

class Comment(models.Model):
    task = models.ForeignKey(Task,null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User,null=True,on_delete=models.SET_NULL)
    text = models.TextField(max_length=500,null=True,blank=True) #RichTextField() #
    date = models.DateTimeField(verbose_name='oluşturma tarihi',default=timezone.now, editable=False)

    def __unicode__(self):
        return self.text

class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Log Time'))
    action = models.CharField(max_length=32, verbose_name=_(u'Action'),default="")
    description = models.TextField(verbose_name=_(u'Description'), null=True, blank=True)
    url = models.CharField(max_length=100, verbose_name=_(u'Url'),default="")
    user = models.ForeignKey(User,null=True,blank=True,related_name='project_log_user', on_delete=models.CASCADE,verbose_name="User")

    def __unicode__(self):
        return unicode(self.user) +" - "+ unicode(self.action) +" "+ unicode(self.description)