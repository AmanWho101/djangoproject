from django.contrib import admin
from django.urls import path,re_path
from head import views


urlpatterns = [
    path('',views.index,name='home'),
    path('details/<int:id>/',views.show,name='details')
    
]
#+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
