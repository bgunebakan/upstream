# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import *

admin.site.register(Controller)
admin.site.register(Identifier)
admin.site.register(Action)
admin.site.register(Action_type)
admin.site.register(Door)
admin.site.register(Door_group)
admin.site.register(Permission)
