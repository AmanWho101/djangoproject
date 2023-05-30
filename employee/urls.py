from django.contrib import admin
from django.urls import path

from employee import views

urlpatterns = [
    path('',views.emp),
    path('admin/', admin.site.urls),
    path('emp', views.emp),
    path('show', views.show),
    path('test',views.test),
    path('edit/<int:id>', views.edit),
    path('update/<int:id>',views.update),
    path('delete/<int:id>',views.destroye),
]

