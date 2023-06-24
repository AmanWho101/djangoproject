from django.contrib import admin
from django.urls import path,re_path
from head import views
from django.contrib.auth import views as auth_views
from django.urls.conf import include

urlpatterns = [

    path('',views.index_head,name='home_head'),

    
    
    path('details/<int:id>/',views.show_head,name='details'),

    path('logout/', auth_views.LogoutView.as_view(next_page='login'), name='logout'),
    path('login/', auth_views.LoginView.as_view(next_page='/'), name='login'),
    
    
]
#+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
