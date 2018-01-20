from django.conf.urls import url,include
from . import views

urlpatterns = [
    #url(r'^(?P<username>.*)', views.profile, name='profile'),
    url(r'^$', views.index, name='index'),
    url(r'^profile/(?P<username>.*)', views.profile, name='profile'),
    url(r'^new/(?P<user_type>.*)', views.new_user, name='new_user'),
    #url(r'^profile/', views.profile, name='profile'),
]
