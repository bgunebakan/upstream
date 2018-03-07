# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig


class PersonnelConfig(AppConfig):
    name = 'personnel'

    def ready(self):
        import personnel.signals  # noqa
