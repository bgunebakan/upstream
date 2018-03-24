from django.conf.urls import url,include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^new/(?P<form_type>.*)', views.new_project, name='new_project'),
    url(r'^detail/(?P<project_id>.*)', views.detail_project, name='detail_project'),
    url(r'^list/all', views.projects_table, name='projects_table'),
    url(r'^ganttchart', views.ganttchart, name='ganttchart'),
]
