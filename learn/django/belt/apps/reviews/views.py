from django.shortcuts import render, redirect

from models import *
from django.contrib import messages
import bcrypt

def index(request):
        return render(request, 'reviews/index.html')


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

    errors = []
    if len(request.POST['password']) < 8:
        errors.append("Too Low of a password!")

    if request.POST['password'] != request.POST['confirm_password']:
        errors.append("Password and password confirmation don't match.")

    if errors:
        for err in errors:
            messages.error(request, err)

        return redirect('/')

    else:
        password=request.POST['password']
        safe_password = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
        Users.objects.create(first_name=request.POST['first_name'], last_name=request.POST['last_name'], email = request.POST['email'], password=safe_password)
        return redirect('/')



def success(request):
    # check if user is logged in
    if not 'user_id' in request.session:
        return redirect('/')
    else:
        rev = Review.objects.all().order_by("-review")[:3]
        all_rev = Books.objects.all()
        context = {'recent_review': rev, 'all_reviews': all_rev}
        return render(request, 'reviews/success.html', context)

def book_add(request):
    if request.method =="POST":
        if len(request.POST['new_author']) > 0:
            print request.POST['new_author']
            Author.objects.create(author=request.POST['new_author'])
            Books.objects.create(title=request.POST['book_title'], author_id = Author.objects.get(author=request.POST['new_author']).id)
            Review.objects.create(review = request.POST['review'], ratings = request.POST['rating'], book_id = Books.objects.get(title=request.POST['book_title']).id, user_id = request.session['user_id'])
            redirect_id = Books.objects.get(title=request.POST['book_title']).id
            return redirect('/books/{}'.format(redirect_id))
    else:
        auth = Author.objects.all()
        context = {'author': auth}
        return render(request, 'reviews/add.html', context)




def show_user(request,id):

    u = Users.objects.get(id = id)
    count = Review.objects.filter(user=u)
# GET REVIEWS WHERE USER ID = 1

# get book titles with reviews from user id 1
    user_get_reviews = Review.objects.filter(user_id = Users.objects.get(id = id))



    count2 = count.count()
    context = {"data": u, "count": count2, "user_get_reviews": user_get_reviews}

    return render(request, 'reviews/user.html', context)

def logout(request):
    request.session.clear()
    return redirect ('/')

def show_book(request, id):

    if request.method == "POST":
        Review.objects.create(review=request.POST['new_review'], ratings = request.POST['new_rating'], book_id = id, user_id = request.session['user_id'])
        return redirect('/books/'+id)
    else:
        if request.method == "GET":
            book = Books.objects.get(id = id) #20 book id
            a = book.author

            r = Review.objects.filter(book = book)
            u = Users.objects.get(id = request.session['user_id'])


            context = {
                "book": book, "author": a, "review": r, "user": u
            }
            return render(request, 'reviews/book.html', context)
