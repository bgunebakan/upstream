"""
WSGI config for upstream project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.9/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

import settings
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "upstream.settings")

application = get_wsgi_application()


if settings.DOSIMETER_ENABLE:
    from portunes.tasks import tedThread

    tedlistenerThread = tedThread('TED Listener Thread')
    tedlistenerThread.daemon = True
    print("Starting Thread: " + str(tedlistenerThread.name))
    tedlistenerThread.start()
