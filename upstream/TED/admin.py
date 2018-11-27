# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
import models

admin.site.register(models.Person)
admin.site.register(models.Department)
admin.site.register(models.Visit)
