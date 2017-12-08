from django.conf.urls import url,include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^new/(?P<form_type>.*)', views.new, name='new'),
    url(r'^list/itemtype/100/', views.item_table, name='item_table'),

]
