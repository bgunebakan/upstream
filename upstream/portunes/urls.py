from . import views
from cruds_adminlte.urls import crud_for_app
from django.conf.urls import url, include
from django.contrib.auth.decorators import login_required, permission_required


app_name = 'portunes'

urlpatterns=[
    url(r'^$', views.dashboard, name='dashboard'),
    url(r'^guard/dashboard', views.guard_dashboard, name='guard_dashboard'),
    url(r'^logs', views.logs, name='logs'),
    url(r'^settime', views.settime, name='settime'),
    url(r'^access/(?P<user_id>[0-9]+)/', views.user_access, name='user_access'),
    url(r'^actions/(?P<user_id>[0-9]+)/', views.user_actions, name='user_actions'),
    url(r'^access/door/(?P<door_id>[0-9]+)/', views.door_access, name='door_access'),
    url(r'^controller/permission/(?P<id>[0-9]+)/', views.controller_permission, name='controller_permission'),
    url(r'^controller/startup/(?P<id>[0-9]+)/', views.controller_startup, name='controller_startup'),
    #url(r'^$',
    #    permission_required('personnel.can_see_avaliable_personnel', login_url='profile/')(views.dashboard)),
]


urlpatterns+= crud_for_app('portunes', check_perms=True)
