from django.conf.urls import url,include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^new/(?P<form_type>.*)', views.new_project, name='new_project'),

]
