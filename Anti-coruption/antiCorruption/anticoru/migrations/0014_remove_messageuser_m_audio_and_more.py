# Generated by Django 4.2 on 2023-06-27 12:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        (
            "anticoru",
            "0013_alter_messageuser_m_audio_alter_messageuser_m_image_and_more",
        ),
    ]

    operations = [
        migrations.RemoveField(model_name="messageuser", name="m_audio",),
        migrations.RemoveField(model_name="messageuser", name="m_image",),
        migrations.RemoveField(model_name="messageuser", name="m_video",),
    ]
