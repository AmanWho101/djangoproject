from django.shortcuts import render,redirect
from employee.models import Employee
from employee.forms import EmployeeForm
# Create your views here.

def emp(request):
    
    if request.method=="POST":
        
        form=EmployeeForm(request.POST)
        
        if form.is_valid():
            
            try:
                form.save()
                return redirect("/show")
            except:
                pass
        
    else:
        form = EmployeeForm()
    return render(request,'index.html',{'form':form})

def show(request):
    employees=Employee.objects.all()
    print(employees)
    return render(request,'show.html',{'employees':employees})
def edit(request,id):
    
    employee = Employee.objects.get(eid=id)
    
    return render(request,'edit.html',{'employee':employee})
def update(request,id):
    
    employee = Employee.objects.get(eid=id)
    
    form=EmployeeForm(request.POST,instance=employee)
    if form.is_valid():
        print('is')
        form.save()
        return redirect("/show")
    return render(request,'edit.html',{'employee':employee})
def destroye(request,id):
    employee =Employee.objects.get(eid=id)
    print(employee)
    employee.delete()
    return redirect("/show")