from django.shortcuts import render, HttpResponse, redirect
from time import gmtime, strftime

# Create your views here.

def time(request):
    context = {
        "time": strftime("%b-%d-%y %I:%M %p", gmtime())
    }
    return render(request, 'time_display/index.html', context)

##
