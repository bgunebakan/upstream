# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-03-23 17:04
from __future__ import unicode_literals

from django.db import migrations
import django_countries.fields


class Migration(migrations.Migration):

    dependencies = [
        ('personnel', '0004_auto_20180323_1759'),
    ]

    operations = [
        migrations.AlterField(
            model_name='personnel',
            name='country',
            field=django_countries.fields.CountryField(blank=True, default='TR', max_length=2, null=True, verbose_name='Country'),
        ),
    ]