# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-03-23 14:29
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Action',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name=b'Date-time')),
                ('deleted', models.BooleanField(default=False, verbose_name=b'Deleted')),
            ],
        ),
        migrations.CreateModel(
            name='Action_type',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_type', models.IntegerField(choices=[(1, b'Enter'), (2, b'Exit'), (3, b'UndefinedCard'), (4, b'Denied'), (5, b'HealthCheck')])),
                ('level', models.IntegerField(choices=[(1, b'DEBUG'), (2, b'INFO'), (3, b'WARNING'), (4, b'ERROR')])),
                ('message', models.CharField(max_length=255)),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now)),
                ('deleted', models.BooleanField(default=False, verbose_name=b'Silinmi\xc5\x9f')),
            ],
        ),
        migrations.CreateModel(
            name='Controller',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default=b'ACP', error_messages={b'unique': b'Kontrolcu ismi zaten var.'}, max_length=30, unique=True, verbose_name=b'Kontrolc\xc3\xbc Ad\xc4\xb1')),
                ('mac', models.CharField(error_messages={b'unique': b'That identifier mac is already saved.'}, max_length=17, unique=True, verbose_name=b'MAC')),
                ('ip_address', models.GenericIPAddressField(unique=True, verbose_name=b'IP adresi')),
                ('health', models.BooleanField(default=True, verbose_name=b'Durum')),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name=b'Olu\xc5\x9fturulma tarihi')),
                ('updated_date', models.DateTimeField(auto_now=True, verbose_name=b'G\xc3\xbcncelleme tarihi')),
                ('deleted', models.BooleanField(default=False, verbose_name=b'Silinmi\xc5\x9f')),
            ],
            options={
                'ordering': ['name'],
                'verbose_name': 'Controller',
                'verbose_name_plural': 'Controllers',
            },
        ),
        migrations.CreateModel(
            name='Door',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(error_messages={b'unique': b'That door name is already saved.'}, max_length=30, unique=True, verbose_name=b'Kap\xc4\xb1 ismi')),
                ('entrance_controller_pin', models.IntegerField(choices=[(1, b'Pin 1'), (2, b'Pin 2'), (3, b'Pin 3'), (4, b'Pin 4'), (5, b'Pin 5'), (6, b'Pin 6'), (7, b'Pin 7'), (8, b'Pin 8')], default=None, verbose_name=b'Kontrolc\xc3\xbc pin')),
                ('antipassback', models.BooleanField(default=False, verbose_name=b'Antipassback')),
                ('enter', models.BooleanField(default=True, verbose_name=b'Giri\xc5\x9f kap\xc4\xb1s\xc4\xb1')),
                ('description', models.TextField(blank=True, max_length=100, null=True, verbose_name=b'A\xc3\xa7\xc4\xb1klama')),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name=b'Olu\xc5\x9fturulma tarihi')),
                ('updated_date', models.DateTimeField(auto_now=True, verbose_name=b'G\xc3\xbcncelleme tarihi')),
                ('deleted', models.BooleanField(default=False, verbose_name=b'Silinmi\xc5\x9f')),
                ('entrance', models.ForeignKey(default=None, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='entrance_controller', to='portunes.Controller', verbose_name=b'Kontrolc\xc3\xbc')),
            ],
            options={
                'permissions': (('view_door', 'Can view doors'),),
            },
        ),
        migrations.CreateModel(
            name='Door_group',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(error_messages={b'unique': b'That door group is already saved.'}, max_length=30, unique=True)),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now)),
                ('doors', models.ManyToManyField(to='portunes.Door')),
            ],
            options={
                'permissions': (('view_door_groups', 'Can view door groups'),),
            },
        ),
        migrations.CreateModel(
            name='Identifier',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(error_messages={b'unique': b'That identifier name is already saved.'}, max_length=30, verbose_name=b'Kart Ad\xc4\xb1')),
                ('key', models.CharField(error_messages={b'unique': b'That identifier is already saved.'}, max_length=255, unique=True, verbose_name=b'Kart No')),
                ('is_active', models.BooleanField(default=True, verbose_name=b'Aktif')),
                ('identifier_type', models.IntegerField(blank=True, choices=[(1, b'Personel'), (2, b'Ziyaret\xc3\xa7i')], null=True, verbose_name=b'Kart Tipi')),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name=b'Olu\xc5\x9fturulma tarihi')),
                ('deleted', models.BooleanField(default=False, verbose_name=b'Silinmi\xc5\x9f')),
            ],
            options={
                'permissions': (('view_identifier', 'Can view identifiers'),),
            },
        ),
        migrations.CreateModel(
            name='Permission',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('start_date', models.DateTimeField(blank=True, null=True)),
                ('end_date', models.DateTimeField(blank=True, null=True)),
                ('created_date', models.DateTimeField(default=django.utils.timezone.now)),
                ('door', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='portunes.Door')),
                ('personnel', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='action',
            name='action_type',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='portunes.Action_type', verbose_name=b'Action Type'),
        ),
        migrations.AddField(
            model_name='action',
            name='door',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='portunes.Door', verbose_name=b'Door'),
        ),
        migrations.AddField(
            model_name='action',
            name='identifier',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='portunes.Identifier', verbose_name=b'Identifier'),
        ),
        migrations.AddField(
            model_name='action',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name=b'User'),
        ),
    ]