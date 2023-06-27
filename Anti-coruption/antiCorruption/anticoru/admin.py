from django.contrib import admin
from anticoru.models import *
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin


class AccountInline(admin.StackedInline):
    model = Account
    ca_delete = False
    verbose_name_plural = 'Roles'

class CustomizedUserAdmin(UserAdmin):
    inlines = (AccountInline,)
   

admin.site.unregister(User)
admin.site.register(User,CustomizedUserAdmin)
