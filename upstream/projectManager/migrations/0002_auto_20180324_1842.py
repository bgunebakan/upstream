# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-03-24 15:42
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projectManager', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='task',
            old_name='work_hour',
            new_name='percent_done',
        ),
    ]
