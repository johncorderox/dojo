from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.index),
    url(r'^users$', views.users),
    url(r'^users/new$', views.users_new),
    url(r'^users/create$', views.users_create),
    url(r'^users/(?P<id>\d+)$', views.users_show),
    url(r'^users/(?P<id>\d+)/destroy$', views.destroy),
    url(r'^users/(?P<id>\d+)/edit$', views.edit),

]
