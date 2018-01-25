from django.shortcuts import render, redirect

from models import *
import bcrypt
# Create your views here.

def index(request):
        return render(request, 'register/index.html')


def login(request):
        user = Users.objects.get(email = request.POST['email'])
        if bcrypt.checkpw(request.POST['password'].encode(), user.password.encode()):
            request.session['user_id'] = user.id
            # get name of user
            name = Users.objects.get(id = user.id)
            request.session['name'] = name.first_name
            return redirect('/success')
        else:
            return redirect('/')

def register(request):
        password=request.POST['password']
        safe_password = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
        Users.objects.create(first_name=request.POST['first_name'], last_name=request.POST['last_name'], email = request.POST['email'], password=safe_password)
        return redirect('/')


def success(request):
    return render(request, 'register/success.html')
