# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig
from django.utils.translation import ugettext_lazy as _


class PortunesConfig(AppConfig):
    name = 'portunes'
    verbose_name = _('Access Control')

    def ready(self):
        import portunes.signals  # noqa
