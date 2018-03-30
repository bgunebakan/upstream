# -*- coding: utf-8 -*-
from django import template
from django.core.urlresolvers import resolve
from django.core.exceptions import ObjectDoesNotExist
from filer.models import Folder
from django.utils import timezone
from django.contrib.auth.models import User

register = template.Library()


@register.simple_tag
def get_folder(id):
    id = int(id)
    user = User.objects.get(id=id)
    try:
        folder = Folder.objects.get(owner=id)
    except ObjectDoesNotExist:
        folder = Folder.objects.create(name=user.username,uploaded_at=timezone.now,
                created_at=timezone.now,modified_at=timezone.now,tree_id=0,owner_id=user.id)
        folder.save()

    return folder
