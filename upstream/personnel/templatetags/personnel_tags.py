# -*- coding: utf-8 -*-

from personnel.models import Personnel
from django import template
from django.core.exceptions import ObjectDoesNotExist

register = template.Library()


@register.simple_tag
def get_personnel(request):
    try:
        personnel = Personnel.objects.get(user=request.user)
    except ObjectDoesNotExist:
        return ""
    return personnel
