from django.shortcuts import render
from anticoru.models import *
from sqlalchemy import *
# Create your views here.
def index(request):
    result = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter()
    
    return render(request,'head/index.html',{'result':result})

def show(request,id):
    details = MessageUser.objects.order_by('-m_timestamp').select_related('aid').filter(mid = id)
    
    return render(request,'head/index.html',{'details':details})