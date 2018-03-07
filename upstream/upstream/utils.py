import homepage
from django.forms.models import model_to_dict

def get_settings():
    settings_all = homepage.models.Setting.objects.all()
    context = {'app_name': 'Upstream'}

    for setting in settings_all:
        context.update({setting.name:setting.value})

    print context
    return context
