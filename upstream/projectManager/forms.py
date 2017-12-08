# -*- coding: utf-8 -*-
from django import forms

from .models import *
#from djrichtextfield.widgets import RichTextWidget

class ProjectForm(forms.ModelForm):

    class Meta:
        model = Project
        fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(ProjectForm, self).__init__(*args, **kwargs)

class TaskForm(forms.ModelForm):

    class Meta:
        model = Task
        exclude = ('created_date','updated_date')
        widgets = {
            'start_date': forms.DateTimeInput(attrs={'class':'form-control pull-right','id':'startdatetime'}),
            'end_date': forms.DateTimeInput(attrs={'class':'form-control pull-right','id':'enddatetime'}),
        }
        #fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(TaskForm, self).__init__(*args, **kwargs)

class TasktypeForm(forms.ModelForm):

    class Meta:
        model = Tasktype
        exclude = ('created_date','updated_date')
        #fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(TasktypeForm, self).__init__(*args, **kwargs)

class StatustypeForm(forms.ModelForm):

    class Meta:
        model = Statustype
        fields = ('name',)

    def __init__(self, *args, **kwargs):
        super(StatustypeForm, self).__init__(*args, **kwargs)

class CommentForm(forms.ModelForm):

    class Meta:
        model = Comment
        exclude = ('date',)
        #text = forms.CharField(widget=RichTextWidget(field_settings='mini'))
        #widgets = {
        #    'text': forms.DateTimeInput(attrs={'class':'textarea','id':'editor1'}),
        #}

        #fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(CommentForm, self).__init__(*args, **kwargs)
