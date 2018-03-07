# -*- coding: utf-8 -*-
from django.conf.urls import url
from django.views.generic import TemplateView

from . import views

app_name = 'simone'

urlpatterns = [
    url(r'^$', views.index),
    #url(r'viewmsg/(?P<server>\d+)/(?P<folder>.*?)/(?P<uid>\d+)/$', views.viewmsg),
    url(r'compose/', views.compose),
    url(r'read/', views.read),
    #url(r'send/$', views.send),
]
