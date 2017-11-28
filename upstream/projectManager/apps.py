# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig


class ProjectmanagerConfig(AppConfig):
    name = 'projectManager'

    def ready(self):
        import projectManager.signals  # noqa
