from django.shortcuts import render
from django.http import JsonResponse, HttpResponseBadRequest
from anticoru.models import *
from sqlalchemy import *
import json
from bson import json_util
from django.views.generic.edit import CreateView
# Create your views here.


def index(request):
    result = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter()
    res_Arr = []
    for res in result:
        res_Arr.append(res.to_json())
        data = {'result':res_Arr}
        test = JsonResponse(data)
    return render(request,'head/index.html',{'result':result})

def Viewjson(request):
    result = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter()
    res_Arr = []
    for res in result:
        res_Arr.append(res.to_json())
        data = {'result':res_Arr}
        test = JsonResponse(data)
        aaa="234"
        
    return render(request,'head/index.html',{'result':aaa})


def show(request,id):
    details = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter(mid = id)
    
    return render(request,'head/index.html',{'details':details})