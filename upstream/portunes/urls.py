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
    #url(r'^$',
    #    permission_required('personnel.can_see_avaliable_personnel', login_url='profile/')(views.dashboard)),
]


urlpatterns+= crud_for_app('portunes', check_perms=True)
