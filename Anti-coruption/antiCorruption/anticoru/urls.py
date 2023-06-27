from django.contrib import admin
from django.urls import path,re_path
from django.urls.conf import include
from anticoru import views,complens
from django.conf.urls.static import static
from django.conf import settings


urlpatterns = [
    path('',views.index,name='home'),
#    "listing/<int:id>/close"
    # path('search/<id>',views.search_r,name='search_r'),
    path('result/',views.index,name='search'),
    
    # login

    path('login', views.loginhead,name='login'),


    path('newcomplen/',views.complen,name='complainform'),
    path('form',views.formsave,name="form"),
    path('search/',views.search,name="search"),
    re_path(r'^admin/$',views.index,name='index'),#(?P<poll_id>\d+),
    path('download_f/<int:id>/',views.download_f,name='download_f'),
    path('download_a/<int:id>/',views.download_i,name='download_a'),
    path('download_v/<int:id>/',views.download_a,name='download_v'),
    path('download_i/<int:id>/',views.download_v,name='download_i'),
    
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
#+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
