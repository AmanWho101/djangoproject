# Generated by Django 4.2 on 2023-06-27 10:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("anticoru", "0011_account"),
    ]

    operations = [
        migrations.AlterField(
            model_name="messageuser",
            name="m_file",
            field=models.FileField(upload_to="documents/%Y/%m/%d"),
        ),
    ]
