from . import views
from cruds_adminlte.urls import crud_for_app
from django.conf.urls import url, include



app_name = 'personnel'
handler404 = 'personnel.views.handler403'

urlpatterns=[
    url(r'^$', views.dashboard, name='dashboard'),
    url(r'^profile/(?P<username>.*)', views.profile, name='profile'),
]


urlpatterns+= crud_for_app('personnel', check_perms=True)
