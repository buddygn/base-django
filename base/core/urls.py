from django.urls import path

from base.core.views import home

APP_NAME = 'base'
urlpatterns = [path('', home, name='home')]
