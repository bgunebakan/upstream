from django.conf.urls import url,include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    #url(r'^', views.profile, name='profile'),
    #url(r'^profile/(?P<username>.*)', views.profile, name='profile'),
    #url(r'^profile/', views.profile, name='profile'),
]
