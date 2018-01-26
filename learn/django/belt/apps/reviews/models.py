from __future__ import unicode_literals

from django.db import models


# Create your models here.
class Users(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Author(models.Model):
	author = models.CharField(max_length=255)
	created_at = models.DateTimeField(auto_now_add = True)
	updated_at = models.DateTimeField(auto_now = True)



class Books(models.Model):
	title = models.CharField(max_length=255)
	author =  models.ForeignKey(Author)
	created_at = models.DateTimeField(auto_now_add = True)
	updated_at = models.DateTimeField(auto_now = True)


class Review(models.Model):
	review = models.TextField(max_length=1000)
	ratings = models.CharField(max_length=5)
	user = models.ForeignKey(Users, related_name="user_review")
	book = models.ForeignKey(Books, related_name="book_review")

    
