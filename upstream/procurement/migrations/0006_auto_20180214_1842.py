# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-02-14 15:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('procurement', '0005_auto_20180213_1929'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tender_end_date',
            name='timedate',
            field=models.DateTimeField(verbose_name='Tarih-Saat'),
        ),
    ]
