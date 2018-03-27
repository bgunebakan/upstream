# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-03-25 22:54
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations
import django.db.models.deletion
import filer.fields.image


class Migration(migrations.Migration):

    dependencies = [
        ('personnel', '0005_auto_20180323_2004'),
    ]

    operations = [
        migrations.AlterField(
            model_name='personnel',
            name='profile_picture',
            field=filer.fields.image.FilerImageField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='profile_picture', to=settings.FILER_IMAGE_MODEL),
        ),
    ]