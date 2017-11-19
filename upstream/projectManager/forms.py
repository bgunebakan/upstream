# -*- coding: utf-8 -*-
from django import forms

from .models import *


class ProjectForm(forms.ModelForm):

    class Meta:
        model = Project
        fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(ProjectForm, self).__init__(*args, **kwargs)
