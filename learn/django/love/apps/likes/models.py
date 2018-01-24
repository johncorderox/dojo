from __future__ import unicode_literals

from django.db import models

# Create your models here.

class User(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __repr__(self):
        return "<Blog object: {} {} {}".format(self.first_name, self.last_name, self.email)


class Book(models.Model):
    name = models.CharField(max_length=255)
    desc = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    user = models.ForeignKey(User, related_name="books")
    likes = models.ManyToManyField(User, related_name="books_likes")
    def __repr__(self):
        return "<Blog object: {} {}".format(self.name, self.desc)



# this_user = User.objects.get(id=1)
# this_book = Book.objects.first()
#
# this_book.books_likes.add(this_user)
#
#
# Display all users who like the first book
# Book.objects.get(id=1).likes.a
#
# Display the user who uploaded the first book
# Book.objects.get(id=1).user
