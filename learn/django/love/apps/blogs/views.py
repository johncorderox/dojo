from django.shortcuts import render, HttpResponse, redirect

# Create your views here.
def index(request):
    return render(request, 'blogs/index.html')

def new(response):
    response = "placeholder to display a new form to create a new blog"
    return HttpResponse(response)

def create(request):
    if request.method == "POST":
        print "*"*50
        print request.POST
        print request.POST['name']
        print request.POST['desc']
        request.session['name'] = "test"
        print "*"*50
        return redirect("/")
    else:
        return redirect("/")

def show(response,id):
    response = "placeholder to display blog {}".format(id)
    return HttpResponse(response)

def edit(response, id):
    response = "placeholder to EDIT {}".format(id)
    return HttpResponse(response)

def delete(response, id):
    response = "placeholder to DELETE {}".format(id)
    return HttpResponse(response)
