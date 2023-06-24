from django.shortcuts import render,redirect
from anticoru.models import RandomUser,Employee,MessageUser,Result
import random
from django.contrib import messages

# Create your views here.

# def search_r(request, id):
#     print(id)
#     return render(id,'index.html')

def index(request):
    # print(request)
    return render(request,'index.html')

def complen(request):
    return render(request,'newcomplen.html')

def search(request):
    # global test 
    # test = 0
    result = ''
    results = ''
    if request.method == 'POST':
        key = request.POST['search']
        # print(key)
        if len(key) != 0 :
            
            key = request.POST['search']
            # print('key')
            results = RandomUser.objects.filter(complaint_key = key).all()
            # print(result)
            if results:
                # result = 0
                results = RandomUser.objects.get(complaint_key = key)
                # print(key)
                result = MessageUser.objects.all().filter(aid_id = results)
                # print(result)
            else:
                messages.success(request, 'no data have been found')
        else:
            messages.success(request, 'please enter a data to search')
            
    # print(result)

    if len(result) != 0:
        
        return render(request,'index.html',{'result':result})
    
    
    return render(request,'index.html',{'result':''})
   
    
def formsave(request):
    if request.method == 'POST':
        #   print(request.POST)
        rands = random.randrange(111111, 999999, 6)
        #print(request.POST['ctype'])
        RandomUser.objects.create(complaint_key = rands)
        fkanon = RandomUser.objects.get(complaint_key = rands)
        MessageUser.objects.create(
            aid = fkanon ,
            m_ctype = request.POST['ctype'] ,
            m_sname  = request.POST['sname'] ,
            m_sntitle = request.POST['sntitle'] ,
            m_snadress = request.POST['snaddress'] ,
            m_snage  = request.POST['snage'] ,
            m_ccorg  = request.POST['ccorg'] ,
            m_cplace  = request.POST['cplace'] ,
            m_ctime  = request.POST['ctime'] ,
            m_bperson = request.POST['bperson'] ,
            m_nbperson = request.POST['nbperson'] ,
            m_damege_em= request.POST['damage_em'] ,
            m_sbmoney = request.POST['sbmoney'] ,
            m_psigned = request.POST['psigned'] ,
            m_loan  = request.POST['loan'] ,
            m_tax  = request.POST['tax'] ,
            m_file = request.POST['file'] ,
            m_audio  = request.POST['audio'] ,
            m_video  = request.POST['video'] ,
            m_image  = request.POST['image'] ,
            
        )

        value = str(rands) + ' ይሄን ሚስተር ቁጠር በመያዝ ጠቆማዎ ምን ላይ አንደደረሰ መከታተል የቸላሉ::'
     
        messages.success(request, value )
        
    return redirect('home')

def loginhead(request):
    print('head')
    return redirect('home_head')
