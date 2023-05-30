from django.shortcuts import render,redirect

# Create your views here.

def index(request):
    
    return render(request,'index.html')

def complen(request):
    print('new controller')
    return render(request,'newcomplen.html')