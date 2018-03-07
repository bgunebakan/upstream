# -*- coding: utf-8 -*-

from personnel.models import Personnel
from django import template

register = template.Library()


@register.simple_tag
def get_personnel(request):
    personnel = Personnel.objects.get(user=request.user)
    return personnel
