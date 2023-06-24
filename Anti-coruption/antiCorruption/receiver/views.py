from django.shortcuts import render,redirect
from django.http import JsonResponse, HttpResponseBadRequest
from anticoru.models import *
from sqlalchemy import *
import json
from bson import json_util
from django.views.generic.edit import CreateView
# Create your views here.


def index(request):
    if request.user.is_authenticated:
        if request.user.username == 'receiver':
            result = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter()
            res_Arr = []
            for res in result:
                res_Arr.append(res.to_json())
                data = {'result':res_Arr}
                test = JsonResponse(data)
            return render(request,'receiver/index.html',{'result':result})
        return redirect('/auth')        
    return redirect('login')


def show(request,id):
    details = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter(mid = id)
    
    return render(request,'receiver/index.html',{'details':details})

def logform(request):
    
    print('hello')
    return render(request,'auth/login.html',{'result':'aaa'}) 