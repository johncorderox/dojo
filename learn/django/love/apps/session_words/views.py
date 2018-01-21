from django.shortcuts import render, redirect
from time import gmtime, strftime

# Create your views here.
def index(request):
    if request.method == "POST":
        request.session['word'] = request.POST['word']
        request.session['color'] = request.POST['color']
        request.session['big'] = request.POST['big']
        output_chat = request.session['word']
        if not 'chat' in request.session:
            request.session['chat'] = []
            return redirect('/session_words')
        if not 'big' in request.session:
            request.session['big'] = "no"

        else:
            #get TIME
            time_chat = "added on {}" .format(strftime("%I:%M %p %B-%d-%Y", gmtime()))
            color_chat = request.session['color']
            # add all to dict.
            request.session['chat'].append({'chat': output_chat, 'time': time_chat, 'color': color_chat})
            return redirect('/session_words')
    else:
        return render(request, 'session_words/index.html')

def clear(request):
    del request.session['chat']
    return redirect('/session_words')
