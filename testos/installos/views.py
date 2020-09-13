from django.shortcuts import render
import subprocess
import json


def index(request):
    return render(request, 'index.html')
def reg(request):
    if request.method == 'POST':
        #if request.POST['lang'] == 'cn':
           #ret = subprocess.run(["mkdir", "/Users/niuxinglei/lang"])
        pinpai = request.POST.get('pinpai')
        xinghao = request.POST.get('xinghao')
        raid = request.POST.get('raid')
        system = request.POST.get('system')
        banben = request.POST.get('banben')
        lang = request.POST.get('lang')
        fangan = request.POST.get('fangan')
        boot = request.POST.get('boot')
        swap = request.POST.get('swap')
        root = request.POST.get('root')
        qita = request.POST.get('qita')
        package = request.POST.get('package')
        zidingyishuru = request.POST.get('zidingyishuru')
        with open('test2.txt','w') as f:
            if pinpai != '':
               f.write("pinpai:"+pinpai+"\n")
            if xinghao != '':
               f.write("xinghao:"+xinghao+"\n")
            if raid != '':
                       f.write("raid:"+raid+"\n")
            if system != '':
                       f.write("system:"+system+"\n")
                       f.write("banben:"+banben+"\n")
                       f.write("yuyan:"+lang+"\n")
            if fangan == 'zidingyif':
                       f.write("fangan:"+fangan+"\n")
                       f.write("boot:"+boot+"\n")
                       f.write("swap:"+swap+"\n")
                       f.write("root:"+root+"\n")
                       if qita != '':
                           f.write("qita:"+qita+"\n")
            else:
                       f.write("fangan:"+fangan+"\n")
            if package == 'zidingyip':
                       f.write("package:"+package+"\n")
                       f.write("zidingyishuru:"+zidingyishuru+"\n")
            else:
                       f.write("package:"+package+"\n")
            #f.write("package:"+package+"\n")
            #f.write("zidingyi:"+zidingyi+"\n")
            f.close()
        ret = subprocess.run(["sh", "/Users/niuxinglei/123.sh"])
        print(ret)
    return render(request, 'index.html')
# Create your views here.

