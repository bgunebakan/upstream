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
#import django_bootstrap_calendar
from django.conf import settings
from django.conf.urls.static import static
from personnel.views import PersonnelCRUD,Personnel_typeCRUD,UserCRUD
from django.apps import apps
from cruds_adminlte.urls import crud_for_model
from cruds_adminlte.urls import crud_for_app
from personnel.models import Personnel
from procurement.views import TenderCRUD,Tender_end_dateCRUD

usercrud = UserCRUD()
personnelcrud = PersonnelCRUD()
personnel_typecrud = Personnel_typeCRUD()


tendercrud = TenderCRUD()

ns = crud_for_app('personnel', check_perms=True, namespace="up")

urlpatterns = [
    url(r'^$', views.index),
    url(r'^admin/', admin.site.urls),
    url(r'^accounts/login/', auth_views.login, {'template_name': 'adminlte/login.html'}, name='login'),
    url(r'^accounts/logout/', auth_views.logout, {'next_page': '/'}, name='logout'),
    url(r'^select2/', include('django_select2.urls')),
    url(r'^project/', include('projectManager.urls'),name='project'),
    url(r'^mail/', include('webmail.urls')),
    url(r'^portunes/', include('portunes.urls')),
    url(r'^inventory/', include('inventory.urls', namespace='inventory-urls', app_name='inventory')),
    url(r'^ldapconnect/', include('ldapconnect.urls')),
    url(r'^select2/', include('django_select2.urls')),
    #personnel
    url('^personnel/', include('personnel.urls')),
    url(r'', include(usercrud.get_urls())),
    url(r'', include(personnelcrud.get_urls())),
    url(r'', include(personnel_typecrud.get_urls())),
    #procurement
    url(r'^procurement/', include('procurement.urls')),
    url(r'', include(tendercrud.get_urls())),

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
