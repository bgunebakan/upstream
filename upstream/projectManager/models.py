# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib.auth.models import User,Group
from django.db import models
from django.utils import timezone
from datetime import datetime
from djrichtextfield.models import RichTextField

class Project(models.Model):
    name = models.CharField(max_length=50)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='oluşturma tarihi', editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='güncelleme tarihi', blank=True, editable=False)
    top_project = models.ForeignKey('self',null=True,blank=True)
    owner = models.ForeignKey(User)
    group = models.ForeignKey(Group,null=True,blank=True)
    description = models.TextField(max_length=200,null=True,blank=True)

    def __unicode__(self):
        return self.name

class Tasktype(models.Model):
    name = models.CharField(max_length=50)

    def __unicode__(self):
        return self.name

class Statustype(models.Model):
    name = models.CharField(max_length=50)

    def __unicode__(self):
        return self.name

class Task(models.Model):
    name = models.CharField(max_length=50)

    created_date = models.DateTimeField(verbose_name='date created',default=timezone.now, editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='güncelleme tarihi', blank=True, editable=False)
    start_date = models.DateTimeField('başlama tarihi')
    end_date = models.DateTimeField('bitiş tarihi')
    work_hour = models.PositiveSmallIntegerField(null=True,blank=True)

    top_task = models.ForeignKey('self',null=True,blank=True)
    project = models.ForeignKey(Project,null=True,blank=True)
    owner = models.ForeignKey(User)
    group = models.ForeignKey(Group,null=True,blank=True)

    task_type = models.ForeignKey(Tasktype,null=True,blank=True)
    status = models.ForeignKey(Statustype,null=True,blank=True)

    description = models.TextField(max_length=200,null=True,blank=True)

    def __unicode__(self):
        return self.name

class Comment(models.Model):
    task = models.ForeignKey(Task)
    user = models.ForeignKey(User)
    text = RichTextField() #models.TextField(max_length=500,null=True,blank=True)
    date = models.DateTimeField(verbose_name='oluşturma tarihi',default=timezone.now, editable=False)

    def __unicode__(self):
        return self.text
