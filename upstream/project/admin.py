# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import *

class ProjectAdmin(admin.ModelAdmin):
     list_display = ('name', 'top_project','created_date')

class CommentAdmin(admin.ModelAdmin):
     list_display = ('text', 'date','user')

class TasktypeAdmin(admin.ModelAdmin):
     list_display = ('name',)

class StatustypeAdmin(admin.ModelAdmin):
     list_display = ('name',)

class TaskAdmin(admin.ModelAdmin):
     list_display = ('name', 'top_task','created_date')

admin.site.register(Project,ProjectAdmin)
admin.site.register(Task,TaskAdmin)
admin.site.register(Tasktype,TasktypeAdmin)
admin.site.register(Statustype,StatustypeAdmin)
admin.site.register(Comment,CommentAdmin)
admin.site.register(Log)
