# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib.auth.models import User,Group
from django.db import models
from django.utils import timezone
from datetime import datetime
from django.utils.translation import ugettext_lazy as _
from django.core.urlresolvers import reverse

class Project(models.Model):
    name = models.CharField(max_length=50)
    created_date = models.DateTimeField(default=timezone.now,verbose_name='Created date', editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='Updated date', blank=True, editable=False)
    top_project = models.ForeignKey('self',null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Top Project")
    owner = models.ManyToManyField(User,blank=True,verbose_name="Project Manager")
    #group = models.ManyToManyField(Group,blank=True)
    description = models.TextField(max_length=1000,null=True,blank=True,verbose_name="Description")

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return "/project/"

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Project')
        verbose_name_plural = _(u'Projects')

class Tasktype(models.Model):
    name = models.CharField(max_length=50)
    icon = models.CharField(max_length=20,default="users",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return "/project/tasktype/list"

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Task Type')
        verbose_name_plural = _(u'Task Types')

class Statustype(models.Model):
    name = models.CharField(max_length=50)
    icon = models.CharField(max_length=20,default="users",verbose_name = "Icon",help_text=_('<a target="_blank" href="http://fontawesome.com/icons">Icon Seçenekleri</a>'))
    color = models.CharField(max_length=20,default="yellow",verbose_name = "Color",help_text=_('<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Seçenekleri</a>'))

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return "/project/statustype/list"

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Status Type')
        verbose_name_plural = _(u'Status Types')

class Task(models.Model):
    name = models.CharField(max_length=50)

    created_date = models.DateTimeField(verbose_name='Created Date',default=timezone.now, editable=False)
    updated_date = models.DateTimeField(auto_now=True,verbose_name='Update date', blank=True, editable=False)
    start_date = models.DateTimeField(default=timezone.now,verbose_name='Start date')
    end_date = models.DateTimeField(default=timezone.now() + timezone.timedelta(days=1),verbose_name='End date')
    percent_done = models.PositiveSmallIntegerField(default=0,null=True,blank=True,verbose_name="Percent done")
    priority = models.PositiveSmallIntegerField(default=0,null=True,blank=True,verbose_name="Priority")
    top_task = models.ForeignKey('self',null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Top Task")
    project = models.ForeignKey(Project,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Project")
    #owner = models.ForeignKey(User,null=True,blank=True,related_name='tast_owner', on_delete=models.CASCADE,verbose_name="Owner")
    inchargeuser = models.ManyToManyField(User,blank=True,verbose_name="People in charge")
    #group = models.ManyToManyField(Group,blank=True,verbose_name="Workers Group")

    task_type = models.ForeignKey(Tasktype,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Task type")
    status = models.ForeignKey(Statustype,null=True,blank=True,on_delete=models.SET_NULL,verbose_name="Status")
    finished = models.BooleanField(default=False,blank=True,verbose_name = "Finished")
    description = models.TextField(max_length=500,null=True,blank=True,verbose_name="Notes")

    def __unicode__(self):
        return self.name
    def get_absolute_url(self):
        return "/project/task/%i" % self.id

    class Meta:
        ordering = ['name']
        verbose_name = _(u'Task')
        verbose_name_plural = _(u'Tasks')

class Comment(models.Model):
    task = models.ForeignKey(Task,null=True,on_delete=models.SET_NULL)
    user = models.ForeignKey(User,null=True,on_delete=models.SET_NULL)
    text = models.TextField(max_length=1000,null=True,blank=True)
    date = models.DateTimeField(verbose_name='Created date',default=timezone.now, editable=False)

    def __unicode__(self):
        return self.text

    def get_absolute_url(self):
        return "/project/task/%i" % self.task.id

    class Meta:
        ordering = ['-date']
        verbose_name = _(u'Comment')
        verbose_name_plural = _(u'Comments')

class Report(models.Model):
    task = models.ForeignKey(Task,null=True,on_delete=models.SET_NULL,verbose_name='Task')
    user = models.ForeignKey(User,null=True,on_delete=models.SET_NULL,verbose_name='User')
    report = models.TextField(max_length=3000,null=True,blank=True,verbose_name='Report')
    date = models.DateTimeField(verbose_name='created date',default=timezone.now, editable=False)
    approved = models.BooleanField(default=False,blank=True,verbose_name = "Approved")

    def __unicode__(self):
        return self.report

    def get_absolute_url(self):
        return "/project/task/%i" % self.task.id

    class Meta:
        ordering = ['-date']
        verbose_name = _(u'Report')
        verbose_name_plural = _(u'Reports')

class Log(models.Model):
    timedate = models.DateTimeField(auto_now_add=True, verbose_name=_(u'Log Time'))
    action = models.CharField(max_length=32, verbose_name=_(u'Action'),default="")
    description = models.TextField(verbose_name=_(u'Description'), null=True, blank=True)
    url = models.CharField(max_length=100, verbose_name=_(u'Url'),default="")
    user = models.ForeignKey(User,null=True,blank=True,related_name='project_log_user', on_delete=models.CASCADE,verbose_name="User")

    def __unicode__(self):
        return unicode(self.user) +" - "+ unicode(self.action) +" "+ unicode(self.description)

    class Meta:
        ordering = ['-timedate']
        verbose_name = _(u'Log')
        verbose_name_plural = _(u'Logs')
