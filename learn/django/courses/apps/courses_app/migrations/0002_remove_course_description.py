# -*- coding: utf-8 -*-
# Generated by Django 1.10.8 on 2018-01-24 22:39
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courses_app', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='course',
            name='description',
        ),
    ]
