from . import views
from django.conf.urls import url, include
from django.contrib.auth.decorators import login_required, permission_required


app_name = 'TED'
handler403 = 'personnel.views.handler403'

urlpatterns=[
    url(r'^', views.dashboard, name='dashboard'),
    url(r'^rest_request/', views.rest_request, name='rest_request'),
]
