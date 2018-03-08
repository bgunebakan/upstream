# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig
from django.utils.translation import ugettext_lazy as _

class PersonnelConfig(AppConfig):
    name = 'personnel'
    verbose_name = _('Kullanıcı Yönetimi')

    def ready(self):
        import personnel.signals  # noqa
