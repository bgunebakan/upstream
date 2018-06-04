# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig
from django.utils.translation import ugettext_lazy as _


class InventoryConfig(AppConfig):
    name = 'inventory'
    verbose_name = _('Inventory')

    def ready(self):
        import inventory.signals  # noqa
