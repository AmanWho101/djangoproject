from django.contrib import admin
from django.urls import path,re_path

from receiver import views


urlpatterns = [
    path('',views.index,name='home'),

    
]
#+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
