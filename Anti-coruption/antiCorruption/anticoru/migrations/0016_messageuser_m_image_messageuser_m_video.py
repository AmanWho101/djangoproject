# Generated by Django 4.2 on 2023-06-27 14:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("anticoru", "0015_messageuser_m_audio"),
    ]

    operations = [
        migrations.AddField(
            model_name="messageuser",
            name="m_image",
            field=models.FileField(default=1, upload_to="documents/%Y/%m/%d"),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name="messageuser",
            name="m_video",
            field=models.FileField(default=1, upload_to="documents/%Y/%m/%d"),
            preserve_default=False,
        ),
    ]
