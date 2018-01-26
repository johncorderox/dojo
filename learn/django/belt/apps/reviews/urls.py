from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.index),
    url(r'^success$', views.success),
    url(r'^login$', views.login),
    url(r'^register$', views.register),
    url(r'logout$', views.logout),
    url(r'^books/add$', views.book_add),
    url(r'^users/(?P<id>\d+)$', views.show_user),
    url(r'^books/(?P<id>\d+)$', views.show_book),

]
