from . import views
from cruds_adminlte.urls import crud_for_app
from django.conf.urls import url, include
from django.contrib.auth.decorators import login_required, permission_required


app_name = 'personnel'
handler403 = 'personnel.views.handler403'

urlpatterns=[
    url(r'^$', views.dashboard, name='dashboard'),
    url(r'^profile/', views.profile, name='profile'),
    url(r'^rest_request/', views.rest_request, name='rest_request'),
    url(r'^detail/(?P<user_id>[0-9]+)/', views.detail, name='detail'),
]
urlpatterns+= crud_for_app('personnel', check_perms=True)
