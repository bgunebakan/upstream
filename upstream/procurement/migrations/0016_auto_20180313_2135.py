# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-03-13 18:35
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('procurement', '0015_auto_20180310_1042'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tender',
            name='supplier',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='procurement.Supplier', verbose_name='Y\xfcklenici'),
        ),
    ]
