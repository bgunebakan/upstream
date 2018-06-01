from django.conf.urls import url,include
from . import views

app_name = 'inventory'

urlpatterns = [
    url(r'^$', views.index, name='index'),

]
