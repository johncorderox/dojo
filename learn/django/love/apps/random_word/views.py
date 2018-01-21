from django.shortcuts import render, HttpResponse, redirect
from django.utils.crypto import get_random_string

# Create your views here.
def index(request):
    return render(request, 'random_word/index.html')

def generate(request):
    if request.method == "POST":
        random_word = get_random_string(length=14)
        request.session['word'] = random_word
        request.session['count'] += 1
        return redirect("/random_word")
    return redirect("/random_word/")

def reset(request):
    request.session['count'] = 0
    return redirect('/random_word')
