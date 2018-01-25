from __future__ import unicode_literals

from django.db import models

# Create your models here.

class Course(models.Model):
    course_name = models.CharField(max_length=250)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)



class Description(models.Model):
    description = models.TextField(max_length=1000)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    course = models.OneToOneField(Description)

class BlogManager(models.Model):
    def basic_validator(self, postData):
        errors = {}
        if len(postData['name'] < 5)
