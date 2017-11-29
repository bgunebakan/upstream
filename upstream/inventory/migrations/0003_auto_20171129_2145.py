# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-11-29 18:45
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0002_itemtype_code'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='supplier',
            name='phone_number2',
        ),
        migrations.AddField(
            model_name='item',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Olu\u015fturma tarihi'),
        ),
        migrations.AddField(
            model_name='supplier',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Olu\u015fturma tarihi'),
        ),
        migrations.AddField(
            model_name='supplier',
            name='web',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='Web'),
        ),
        migrations.AlterField(
            model_name='category',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Olu\u015fturma tarihi'),
        ),
        migrations.AlterField(
            model_name='category',
            name='description',
            field=models.TextField(blank=True, max_length=200, null=True, verbose_name='A\xe7\u0131klama'),
        ),
        migrations.AlterField(
            model_name='category',
            name='name',
            field=models.CharField(max_length=50, verbose_name='Kategori ismi'),
        ),
        migrations.AlterField(
            model_name='category',
            name='top_category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='inventory.Category', verbose_name='\xdcst kategori'),
        ),
        migrations.AlterField(
            model_name='inventory',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Olu\u015fturma tarihi'),
        ),
        migrations.AlterField(
            model_name='inventory',
            name='description',
            field=models.TextField(blank=True, max_length=200, null=True, verbose_name='A\xe7\u0131klama'),
        ),
        migrations.AlterField(
            model_name='inventory',
            name='location',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventory.Location', verbose_name='Yer'),
        ),
        migrations.AlterField(
            model_name='inventory',
            name='name',
            field=models.CharField(max_length=32, verbose_name='Depo ismi'),
        ),
        migrations.AlterField(
            model_name='item',
            name='brand',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='Marka'),
        ),
        migrations.AlterField(
            model_name='item',
            name='category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventory.Category', verbose_name='Kategori'),
        ),
        migrations.AlterField(
            model_name='item',
            name='inventory',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='inventory.Inventory', verbose_name='Depo'),
        ),
        migrations.AlterField(
            model_name='item',
            name='item_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventory.ItemType', verbose_name='Malzeme \xe7e\u015fidi'),
        ),
        migrations.AlterField(
            model_name='item',
            name='name',
            field=models.CharField(max_length=64, verbose_name='Malzeme Ad\u0131'),
        ),
        migrations.AlterField(
            model_name='item',
            name='notes',
            field=models.TextField(blank=True, null=True, verbose_name='A\xe7\u0131klama'),
        ),
        migrations.AlterField(
            model_name='item',
            name='part_number',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='Par\xe7a Numaras\u0131'),
        ),
        migrations.AlterField(
            model_name='item',
            name='suppliers',
            field=models.ManyToManyField(blank=True, to='inventory.Supplier', verbose_name='Tedarik\xe7i'),
        ),
        migrations.AlterField(
            model_name='itemtype',
            name='code',
            field=models.IntegerField(default=0, verbose_name='Malzeme Kodu'),
        ),
        migrations.AlterField(
            model_name='itemtype',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Olu\u015fturma tarihi'),
        ),
        migrations.AlterField(
            model_name='itemtype',
            name='description',
            field=models.TextField(blank=True, max_length=200, null=True, verbose_name='A\xe7\u0131klama'),
        ),
        migrations.AlterField(
            model_name='itemtype',
            name='name',
            field=models.CharField(max_length=50, verbose_name='Malzeme \xc7e\u015fit ismi'),
        ),
        migrations.AlterField(
            model_name='location',
            name='address',
            field=models.TextField(blank=True, max_length=200, null=True, verbose_name='Adres'),
        ),
        migrations.AlterField(
            model_name='location',
            name='name',
            field=models.CharField(max_length=32, verbose_name='Yer ismi'),
        ),
        migrations.AlterField(
            model_name='location',
            name='phone_number1',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='Telefon'),
        ),
        migrations.AlterField(
            model_name='log',
            name='action',
            field=models.CharField(max_length=32, verbose_name='Hareket'),
        ),
        migrations.AlterField(
            model_name='log',
            name='description',
            field=models.TextField(blank=True, null=True, verbose_name='A\xe7\u0131klama'),
        ),
        migrations.AlterField(
            model_name='log',
            name='item',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventory.Item', verbose_name='Malzeme'),
        ),
        migrations.AlterField(
            model_name='log',
            name='timedate',
            field=models.DateTimeField(auto_now_add=True, verbose_name='Tarih-Saat'),
        ),
        migrations.AlterField(
            model_name='supplier',
            name='address',
            field=models.TextField(blank=True, max_length=200, null=True, verbose_name='Adres'),
        ),
        migrations.AlterField(
            model_name='supplier',
            name='name',
            field=models.CharField(max_length=32, verbose_name='Tedarik\xe7i Firma'),
        ),
        migrations.AlterField(
            model_name='supplier',
            name='notes',
            field=models.TextField(blank=True, null=True, verbose_name='A\xe7\u0131klama'),
        ),
        migrations.AlterField(
            model_name='supplier',
            name='phone_number1',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='Telefon'),
        ),
    ]
