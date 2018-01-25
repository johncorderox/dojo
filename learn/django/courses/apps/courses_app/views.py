from django.shortcuts import render, redirect
from models import *

def index(request):
    if request.method == "POST":
        Description.objects.create(description=request.POST['name'])
        Course.objects.create(course_name=request.POST['desc'])
        return render(request, 'courses_app/index.html')
    else:
        c = Course.objects.all()
        d = Description.objects.all()
        return render(request, 'courses_app/index.html',{'data': c, 'data2': d})
