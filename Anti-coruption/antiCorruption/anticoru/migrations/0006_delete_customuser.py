# Generated by Django 4.2 on 2023-06-26 11:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("anticoru", "0005_customuser"),
    ]

    operations = [
        migrations.DeleteModel(name="CustomUser",),
    ]