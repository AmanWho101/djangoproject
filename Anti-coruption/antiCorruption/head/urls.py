from django.contrib import admin
from django.urls import path,re_path
from head import views


urlpatterns = [
    path('',views.index,name='home_head'),
    path('Viewajax/',views.Viewjson,name='Viewajax'),
    
    path('details/<int:id>/',views.show,name='details')
    
]
#+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
