export DJANGO_SETTINGS_MODULE=upstream.settings
celery -A upstream worker -l info
