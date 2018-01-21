from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request, 'survey/index.html')

def result(request):
   name = request.POST['name']
   location = request.POST['location']
   language = request.POST['language']
   comment = request.POST['comment']
   values = {
       "name": name,
       "location": location,
       "language": language,
       "comment": comment,

   }
   if not "count" in request.session:
       print "NO SESSION @@@@@@@@@@@"
   request.session['count'] += 1
   return render(request, 'survey/result.html', values)
