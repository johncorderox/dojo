from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Book(models.Model):
    name = models.CharField(max_length=255)
    desc = models.TextField(max_length=1000)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __repr__(self):
        return "<Blog object: {} {}".format(self.name, self.desc)

class Author(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    books = models.ManyToManyField(Book, related_name="authors")
    notes = models.TextField(default="This is text woohoo!")
    def __repr__(self):
        return "<Blog object: {} {} {}".format(self.first_name, self.last_name, self.email)


# Assign the first author to the first 2 books
# this_book = Book.objects.get(id=1)
# this_author = Author.objects.get(id=1)
# this_author.books.add(this_book)


#Assign the second author to the first 3 books
# this_author = Author.objects.get(id=2)
#
# this_book = Book.objects.get(id=1)
#
# this_author.books.add(this_book)


#For the 3rd book, retrieve all the authors
#Book.objects.get(id=3).authors.all()
# For the 3rd book, remove the first author
# > a = Book.objects.get(id=3).authors.first()
# a.delete()
# Find all the books that the 5th author is part of
#
# 5th author                all books
#  Author.objects.get(id=5).books.all()
#



# 
# For the 2nd book, add the 5th author as one of the authors
