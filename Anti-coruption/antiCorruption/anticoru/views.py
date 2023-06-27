from django.shortcuts import render,redirect
from anticoru.models import RandomUser,Employee,MessageUser,Result
import random
from django.contrib import messages
import os
from django.conf import settings
from django.http import HttpResponse

# Create your views here.

# def search_r(request, id):
#     print(id)
#     return render(id,'index.html')

def download_f(request, id):
   
    path = MessageUser.objects.get(mid = id)
    path = str(path.m_file)
    file_path = os.path.join(settings.MEDIA_ROOT, path)
    if os.path.exists(file_path):
        with open(file_path, 'rb') as fh:
            response = HttpResponse(fh.read(), content_type="application/vnd.ms-excel")
            response['Content-Disposition'] = 'inline; filename=' + os.path.basename(file_path)
            return response
            return 
    raise Http404

def download_a(request, id):
   
    path = MessageUser.objects.get(mid = id)
    path = str(path.m_audio)
    file_path = os.path.join(settings.MEDIA_ROOT, path)
    if os.path.exists(file_path):
        with open(file_path, 'rb') as fh:
            response = HttpResponse(fh.read(), content_type="application/vnd.ms-excel")
            response['Content-Disposition'] = 'inline; filename=' + os.path.basename(file_path)
            return response
            return 
    raise Http404
def download_v(request, id):
   
    path = MessageUser.objects.get(mid = id)
    path = str(path.m_video)
    file_path = os.path.join(settings.MEDIA_ROOT, path)
    if os.path.exists(file_path):
        with open(file_path, 'rb') as fh:
            response = HttpResponse(fh.read(), content_type="application/vnd.ms-excel")
            response['Content-Disposition'] = 'inline; filename=' + os.path.basename(file_path)
            return response
            return 
    raise Http404
def download_i(request, id):
   
    path = MessageUser.objects.get(mid = id)
    path = str(path.m_image)
    file_path = os.path.join(settings.MEDIA_ROOT, path)
    if os.path.exists(file_path):
        with open(file_path, 'rb') as fh:
            response = HttpResponse(fh.read(), content_type="application/vnd.ms-excel")
            response['Content-Disposition'] = 'inline; filename=' + os.path.basename(file_path)
            return response
            return 
    raise Http404
    


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
   
    
# def formsave(request):
    # if request.method == 'POST':
        
    #     rands = random.randrange(111111, 999999, 6)
    #     # print(request.FILES['audio'])
    #     RandomUser.objects.create(complaint_key = rands)
    #     fkanon = RandomUser.objects.get(complaint_key = rands)
    #     MessageUser.objects.create(
    #         aid = fkanon ,
    #         m_ctype = request.POST['ctype'] ,
    #         m_sname  = request.POST['sname'] ,
    #         m_sntitle = request.POST['sntitle'] ,
    #         m_snadress = request.POST['snaddress'] ,
    #         m_snage  = request.POST['snage'] ,
    #         m_ccorg  = request.POST['ccorg'] ,
    #         m_cplace  = request.POST['cplace'] ,
    #         m_ctime  = request.POST['ctime'] ,
    #         m_bperson = request.POST['bperson'] ,
    #         m_nbperson = request.POST['nbperson'] ,
    #         m_damege_em= request.POST['damage_em'] ,
    #         m_sbmoney = request.POST['sbmoney'] ,
    #         m_psigned = request.POST['psigned'] ,
    #         m_loan  = request.POST['loan'] ,
    #         m_tax  = request.POST['tax'] ,
    #         m_file = request.FILES['file'] ,
    #         # m_audio  = request.FILES['audio'] ,
    #         # m_video  = request.FILES['video'] ,
    #         # m_image  = request.FILES['image'] ,
            
    #     )
    #     # if request.POST['file']:
    #     #     print(request.POST['audio'])
    #     #     pass
    #     value = str(rands) + ' ይሄን ሚስተር ቁጠር በመያዝ ጠቆማዎ ምን ላይ አንደደረሰ መከታተል የቸላሉ::'
     
    #     messages.success(request, value )
        
    # return redirect('home')
 
def formsave(request):
    if request.method == 'POST':
        
        rands = random.randrange(111111, 999999, 6)
        
        RandomUser.objects.create(complaint_key = rands)
        fkanon = RandomUser.objects.get(complaint_key = rands)
        test = request.FILES['audio'] if not 'audio' in request.FILES else False
        print(test)
        if request.FILES['file'] if 'file' in request.FILES else False:
            if not request.FILES['image'] if 'image' in request.FILES else False:
                if not request.FILES['audio'] if 'audio' in request.FILES else False:
                    if not request.FILES['video'] if 'video' in request.FILES else False:
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
                        m_file = isset(request.FILES['file']) ,
                        )
        elif request.FILES['audio'] if 'audio' in request.FILES else False:
            if not request.FILES['file'] if 'file' in request.FILES else False:
                if not request.FILES['image'] if 'image' in request.FILES else False:
                    if not request.FILES['video'] if 'video' in request.FILES else False:
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
                        m_audio  = request.FILES['audio'] ,
                        )
        elif request.FILES['video'] if 'video' in request.FILES else False:
            print('video1')
            if not request.FILES['audio'] if not 'audio' in request.FILES else False:
                print('video2')
                if not request.FILES['file'] if 'file' in request.FILES else False:
                    print('video3')
                    if not request.FILES['image'] if 'image' in request.FILES else False:
                        print('test')
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
                        m_video  = request.FILES['video'] ,
                        )
        elif request.FILES['image'] if 'image' in request.FILES else False:
            if not request.FILES['file'] if 'file' in request.FILES else False:
                if not request.FILES['audio'] if 'audio' in request.FILES else False:
                    if not request.FILES['video'] if 'video' in request.FILES else False:
                        MessageUser.objects.create(aid = fkanon ,
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
                        m_image  = request.FILES['image'] ,
                        )
        elif request.FILES['file'] if 'file' in request.FILES else False & request.FILES['audio'] if 'audio' in request.FILES else False:
            if not request.FILES['image'] if 'image' in request.FILES else False:
                if not request.FILES['video'] if 'video' in request.FILES else False:
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
                    m_file = request.FILES['file'] ,
                    m_audio  = request.FILES['audio'] ,
                    )
        elif request.FILES['file'] if 'file' in request.FILES else False & request.FILES['video'] if 'video' in request.FILES else False:
            if not request.FILES['image'] if 'image' in request.FILES else False:
                if not request.FILES['audio'] if 'audio' in request.FILES else False:
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
                    m_file = request.FILES['file'] ,
                    m_video  = request.FILES['video'] ,
                    )
        elif request.FILES['file'] if 'file' in request.FILES else False & request.FILES['image'] if 'image' in request.FILES else False:
            if not request.FILES['audio'] if 'audio' in request.FILES else False:
                if not request.FILES['video'] if 'video' in request.FILES else False:
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
                    m_file = request.FILES['file'] ,
                    m_image  = request.FILES['image'] ,

                    )
        elif request.FILES['audio'] if 'audio' in request.FILES else False & request.FILES['video'] if 'video' in request.FILES else False:
            if not request.FILES['image'] if 'image' in request.FILES else False:
                if not request.FILES['file'] if 'file' in request.FILES else False:
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
                    m_audio  = request.FILES['audio'] ,
                    m_video  = request.FILES['video'] ,

                    )
        elif request.FILES['audio'] if 'audio' in request.FILES else False & request.FILES['image'] if 'image' in request.FILES else False:
            if not request.FILES['video'] if 'video' in request.FILES else False:
                if not request.FILES['file'] if 'file' in request.FILES else False:
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

                    m_audio  = request.FILES['audio'] ,

                    m_image  = request.FILES['image'] ,

                    )
        elif request.FILES['image'] if 'image' in request.FILES else False & request.FILES['video'] if 'video' in request.FILES else False:
            if not request.FILES['file'] if 'file' in request.FILES else False:
                if not request.FILES['audio'] if 'audio' in request.FILES else False:
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
                    m_video  = request.FILES['video'] ,
                    m_image  = request.FILES['image'] ,
                    
                       )
        else:
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
                       )

        value = str(rands) + ' ይሄን ሚስተር ቁጠር በመያዝ ጠቆማዎ ምን ላይ አንደደረሰ መከታተል የቸላሉ::'
     
        messages.success(request, value )
        
    return redirect('home')
def loginhead(request):
    print('head')
    return redirect('home_head')
