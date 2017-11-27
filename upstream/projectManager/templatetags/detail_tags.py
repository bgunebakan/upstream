from django import template
import homepage
register = template.Library()

@register.simple_tag
def title():
    setting = homepage.models.Setting.objects.get(name='title')

    return setting.value

@register.simple_tag
def version():
    return "0.0.1 Beta"
