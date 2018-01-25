from django.shortcuts import render, redirect

from models import *

def index(request):
    return render(request, 'rest/index.html')


def users(request):
    users = User.objects.all()

    return render(request, 'rest/users.html', {'users': users})

def users_new(request):
    return render(request, 'rest/users_new.html')


def users_create(request):
    User.objects.create(first_name=request.POST['first_name'], last_name=request.POST['last_name'], email=request.POST['email'])
    return redirect('/users')

def users_show(request, id):
    a= User.objects.get(id=id)
    fn = a.first_name
    ln = a.last_name
    email = a.email
    create = a.created_at

    output = {'id': id, 'fn': fn, 'ln': ln, 'email': email, 'create': create}
    return render(request, 'rest/show.html', output)


def destroy(request, id):
    d = User.objects.get(id = id)
    d.delete()
    print "USER DELETED !!!!! {}".format(id)
    return redirect('/users')


def edit(request, id):
    if request.method == "POST":
        e = User.objects.get(id=id)
        e.first_name = request.POST['first_name']
        e.last_name = request.POST['last_name']
        e.email = request.POST['email']
        e.save()
        return redirect('/users')
    else:
        get_info = User.objects.get(id=id)
        id = get_info.id
        fn = get_info.first_name
        ln = get_info.last_name
        email = get_info.email
        output = {'id': id,'fn': fn, 'ln': ln, 'email': email}
        return render(request, 'rest/edit.html', output)
