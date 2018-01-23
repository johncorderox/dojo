from django.shortcuts import render, redirect
from django.utils.crypto import get_random_string
import random
from time import gmtime, strftime

# Create your views here.
def index(request):
    if not 'chat' in request.session:
        request.session['chat'] = []
    return render(request, 'gold/index.html')

def process_money(request):
    request.session['type'] = request.POST['type']
    if request.session['type'] == "farm":
        request.session['random_number'] = random.randrange(10,20)
        request.session['time'] = strftime("%y-%m-%d %I:%M %p", gmtime())
        time = request.session['time']
        number = request.session['random_number']
        request.session['chat'].append({'num':  number, 'type': 'farm', 'time': time})
        return redirect('/gold')

    if request.session['type'] == "cave":
        request.session['random_number'] = random.randrange(5,10)
        request.session['time'] = strftime("%y-%m-%d %I:%M %p", gmtime())
        time = request.session['time']
        number = request.session['random_number']
        request.session['chat'].append({'num':  number, 'type': 'cave', 'time': time})
        return redirect('/gold')

    if request.session['type'] == "house":
        request.session['random_number'] = random.randrange(2,5)
        request.session['time'] = strftime("%y-%m-%d %I:%M %p", gmtime())
        time = request.session['time']
        number = request.session['random_number']
        request.session['chat'].append({'num':  number, 'type': 'house', 'time': time})
        return redirect('/gold')

    if request.session['type'] == "casino":
        request.session['random_number'] = random.randrange(0,50)
        request.session['time'] = strftime("%y-%m-%d %I:%M %p", gmtime())
        time = request.session['time']
        number = request.session['random_number']
        request.session['chat'].append({'num':  number, 'type': 'casino', 'time': time})
        return redirect('/gold')



def reset(request):
    del request.session['chat']
    return redirect('/gold')
