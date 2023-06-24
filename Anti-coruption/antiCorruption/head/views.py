from django.shortcuts import render,redirect
from django.http import JsonResponse, HttpResponseBadRequest
from anticoru.models import *
from sqlalchemy import *
import json
from bson import json_util
from django.views.generic.edit import CreateView
# Create your views here.


def index_head(request):
    
    
    if request.user.is_authenticated:
        if request.user.username == 'head':
            result = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter()
            res_Arr = []
            for res in result:
                res_Arr.append(res.to_json())
                data = {'result':res_Arr}
                test = JsonResponse(data)
            return render(request,'head/index.html',{'result':result})
        
        return redirect('/auth')    
    return redirect('login')



def show_head(request,id):
    if request.user.is_authenticated:
        
        if request.user.username == 'head':
            details = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter(mid = id)

            return render(request,'head/index.html',{'details':details})
        
        return redirect('/auth') 
    return redirect('login')