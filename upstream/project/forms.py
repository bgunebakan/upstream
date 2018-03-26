# -*- coding: utf-8 -*-
from django import forms
from crispy_forms.bootstrap import TabHolder, Tab, FormActions
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Field, Submit, HTML
from django.utils.translation import ugettext_lazy as _

from .models import *
from cruds_adminlte import (DatePickerWidget,
                            TimePickerWidget,
                            DateTimePickerWidget,
                            ColorPickerWidget,
                            CKEditorWidget)
class ProjectForm(forms.ModelForm):

    class Meta:
        model = Project
        fields = ('name', 'top_project', 'owner', 'group')

    def __init__(self, *args, **kwargs):
        super(ProjectForm, self).__init__(*args, **kwargs)

class TaskForm(forms.ModelForm):

    class Meta:
        model = Task
        fields = ('name','start_date','end_date','percent_done','top_task','project','owner','group','task_type','status','description')
        widgets = {

            'start_date': DateTimePickerWidget(attrs={'format': 'd/m/yyyy h:ii',
                                            'icon': 'fa-calendar'}),
            'end_date': DateTimePickerWidget(attrs={'format': 'd/m/yyyy  h:ii',
                                            'icon': 'fa-calendar'}),
            'description': CKEditorWidget(attrs={'lang': 'tr'}),
        }

    def __init__(self, *args, **kwargs):
        super(TaskForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper(self)
        self.helper.form_tag = False

        self.helper.layout = Layout(
            TabHolder(
                Tab(
                    'Details'.decode('utf-8'),
                    Field('name', wrapper_class="col-md-6"),
                    Field('project', wrapper_class="col-md-6"),
                    Field('top_task', wrapper_class="col-md-6"),
                    Field('owner', wrapper_class="col-md-6"),
                    Field('group', wrapper_class="col-md-6"),
                    Field('task_type', wrapper_class="col-md-6"),
                    Field('status', wrapper_class="col-md-6"),
                ),
                Tab(
                    'Date & Time'.decode('utf-8'),
                    Field('start_date', wrapper_class="col-md-4"),
                    Field('end_date', wrapper_class="col-md-4"),
                    Field('percent_done', wrapper_class="col-md-4"),
                ),
                Tab(
                    _('Notes'),
                    Field('description', wrapper_class="col-md-6"),

                )
            )
        )

        self.helper.layout.append(
            FormActions(
                Submit('submit', _('Kaydet'), css_class='btn btn-primary'),
                HTML("""{% load i18n %}<a class="btn btn-danger"
                        href="{{ url_delete }}">{% trans 'Delete' %}</a>"""),
            )
        )

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
