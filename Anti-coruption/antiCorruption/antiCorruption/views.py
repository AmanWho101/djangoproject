from django.shortcuts import render,redirect
from django.http import JsonResponse, HttpResponseBadRequest
from anticoru.models import *
from sqlalchemy import *
import json
from bson import json_util
from django.views.generic.edit import CreateView

def index(request):
    if request.user.is_authenticated:
        if request.user.username == 'head':
            return redirect('/head')
        elif request.user.username == 'receiver':
            return redirect('/receiver')
    return redirect('login')