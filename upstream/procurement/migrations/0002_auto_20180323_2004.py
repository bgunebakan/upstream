# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-03-23 17:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('procurement', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tenderstatus',
            name='bgcolor',
            field=models.CharField(default='', help_text='<a target="_blank" href="http://basscss.com/v7/docs/background-colors/">Renk Se\xe7enekleri</a>', max_length=20, verbose_name='Arkaplan rengi'),
        ),
    ]
