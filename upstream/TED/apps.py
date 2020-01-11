# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.apps import AppConfig
from django.utils.translation import ugettext_lazy as _
from requests.packages.urllib3.exceptions import InsecureRequestWarning
import requests


class TedConfig(AppConfig):
    name = 'TED'
    verbose_name = _('TED Dosimeter')

    def ready(self):
        import TED.signals
        requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
        from TED.tasks import tedThread

        tedlistenerThread = tedThread('TED Listener Thread')
        tedlistenerThread.daemon = True
        print("Starting Thread: " + str(tedlistenerThread.name))
        tedlistenerThread.start()
