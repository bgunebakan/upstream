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
from django.conf import settings
from django.conf.urls.static import static
from personnel.views import PersonnelCRUD,Personnel_typeCRUD,UserCRUD,GroupCRUD,Annual_leaveCRUD
from django.apps import apps
from cruds_adminlte.urls import crud_for_model
from cruds_adminlte.urls import crud_for_app
from personnel.models import Personnel
from procurement.views import *
from portunes.views import ControllerCRUD,DoorCRUD,DoorGroupCRUD,IdentifierCRUD
from project.views import ProjectCRUD,TaskCRUD,CommentCRUD,TasktypeCRUD,StatustypeCRUD,ReportCRUD
from inventory.views import LocationCRUD,InventoryCRUD,CategoryCRUD,ItemTypeCRUD,ItemCRUD,ShelfCRUD
import api.urls
from django.views.static import serve
from django.views.generic.base import RedirectView

favicon_view = RedirectView.as_view(url='/static/favicon.ico', permanent=True)
from django.conf.urls import handler400, handler403, handler404, handler500

handler404 = 'homepage.views.handler404'
handler500 = 'homepage.views.handler500'
handler403 = 'homepage.views.handler403'
handler400 = 'homepage.views.handler400'

usercrud = UserCRUD()
groupcrud = GroupCRUD()
personnelcrud = PersonnelCRUD()
personnel_typecrud = Personnel_typeCRUD()
annual_leavecrud = Annual_leaveCRUD()

tendercrud = TenderCRUD()
tendertypecrud = TenderTypeCRUD()
tenderstatuscrud = TenderStatusCRUD()
travellingexpensecrud = TravellingExpenseCRUD()
successfultenderercrud = SuccessfulTendererCRUD()

controllercrud = ControllerCRUD()
doorcrud = DoorCRUD()
doorgroupcrud = DoorGroupCRUD()
identifiercrud = IdentifierCRUD()

projectcrud = ProjectCRUD()
taskcrud = TaskCRUD()
tasktypecrud = TasktypeCRUD()
statustypecrud = StatustypeCRUD()
commentcrud = CommentCRUD()
reportcrud = ReportCRUD()

locationcrud = LocationCRUD()
inventorycrud = InventoryCRUD()
categorycrud = CategoryCRUD()
itemtypecrud = ItemTypeCRUD()
itemcrud = ItemCRUD()
#suppliercrud = SupplierCRUD()
shelfcrud = ShelfCRUD()

ns = crud_for_app('personnel', check_perms=True, namespace="up")

urlpatterns = [
    url(r'^$', views.index),
    url(r'^favicon\.ico$', favicon_view),
    url(r'^filer/', include('filer.urls')),
    url(r'^', include('filer.server.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^api/', include(api.urls)),
    url(r'^accounts/login/', auth_views.login, {'template_name': 'adminlte/login.html'}, name='login'),
    url(r'^accounts/logout/', auth_views.logout, {'next_page': '/'}, name='logout'),
    url(r'^select2/', include('django_select2.urls')),
    url(r'^mail/', include('webmail.urls')),

    url('^TED/', include('TED.urls')),

    url(r'^ldapconnect/', include('ldapconnect.urls')),
    url(r'^select2/', include('django_select2.urls')),
    #personnel
    url('^personnel/', include('personnel.urls')),
    url(r'', include(usercrud.get_urls())),
    url(r'', include(groupcrud.get_urls())),
    url(r'', include(personnelcrud.get_urls())),
    url(r'', include(personnel_typecrud.get_urls())),
    url(r'', include(annual_leavecrud.get_urls())),
    #procurement
    url(r'^procurement/', include('procurement.urls')),
    url(r'', include(tendercrud.get_urls())),
    url(r'', include(tendertypecrud.get_urls())),
    url(r'', include(tenderstatuscrud.get_urls())),
    url(r'', include(travellingexpensecrud.get_urls())),
    url(r'', include(successfultenderercrud.get_urls())),
    #portunes
    url(r'^portunes/', include('portunes.urls')),
    url(r'', include(controllercrud.get_urls())),
    url(r'', include(doorcrud.get_urls())),
    url(r'', include(doorgroupcrud.get_urls())),
    url(r'', include(identifiercrud.get_urls())),

    url(r'^project/', include('project.urls'),name='project'),
    url(r'', include(projectcrud.get_urls())),
    url(r'', include(taskcrud.get_urls())),
    url(r'', include(tasktypecrud.get_urls())),
    url(r'', include(statustypecrud.get_urls())),
    url(r'', include(commentcrud.get_urls())),
    url(r'', include(reportcrud.get_urls())),

    url(r'^inventory/', include('inventory.urls'),name='inventory'),
    url(r'', include(locationcrud.get_urls())),
    url(r'', include(inventorycrud.get_urls())),
    url(r'', include(categorycrud.get_urls())),
    url(r'', include(itemtypecrud.get_urls())),
    url(r'', include(itemcrud.get_urls())),
    #url(r'', include(suppliercrud.get_urls())),
    url(r'', include(shelfcrud.get_urls())),

    url(r'^media/(?P<path>.*)$', serve,{'document_root': settings.MEDIA_ROOT}),
    url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
