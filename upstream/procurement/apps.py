# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig
from django.utils.translation import ugettext_lazy as _

class ProcurementConfig(AppConfig):
    name = 'procurement'
    verbose_name = _('İhale Yönetimi')

    #def ready(self):
    #    import personnel.signals  # noqa
