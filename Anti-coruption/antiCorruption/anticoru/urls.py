from django.contrib import admin
from django.urls import path,re_path
from django.urls.conf import include
from anticoru import views,complens


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
    
    
]
#+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
