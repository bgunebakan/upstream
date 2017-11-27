# -*- coding: utf-8 -*-

"""upstream URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include,url
from django.contrib import admin
from homepage import views
from django.contrib.auth import views as auth_views
import django_bootstrap_calendar

urlpatterns = [
    url(r'^$', views.index),
    url(r'^admin/', admin.site.urls),
    url(r'^djrichtextfield/', include('djrichtextfield.urls')),
    url(r'^accounts/login/', auth_views.login, {'template_name': 'clear/login.html'}, name='login'),
    url(r'^accounts/logout/', auth_views.logout, {'next_page': '/'}, name='logout'),
    url(r'^project/', include('projectManager.urls'),name='project'),
    url(r'^mail/', include('webmail.urls')),
    url(r'^personnel/', include('personnel.urls')),
    url(r'^inventory/', include('inventory.urls')),
    url(r'^ldapconnect/', include('ldapconnect.urls')),
    url(r'^calendar/', include('django_bootstrap_calendar.urls')),

]
