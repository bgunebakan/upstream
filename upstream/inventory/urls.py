from django.conf.urls import url,include
from . import views

app_name = 'inventory'

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^find/item/', views.find_item, name='find_item'),
    url(r'^ownership/item/', views.ownership_item, name='ownership_item'),

]
