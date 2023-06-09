# Generated by Django 4.2 on 2023-06-26 11:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("anticoru", "0009_remove_messageuser_aid_remove_result_aid_and_more"),
    ]

    operations = [
        migrations.CreateModel(
            name="Employee",
            fields=[
                ("eid", models.AutoField(primary_key=True, serialize=False)),
                ("ew_unit", models.CharField(max_length=255)),
                ("efname", models.CharField(max_length=255)),
                ("elname", models.CharField(max_length=255)),
                ("eemail", models.CharField(max_length=255)),
                ("eusername", models.CharField(max_length=255)),
                ("epassword", models.CharField(max_length=255)),
            ],
            options={"db_table": "employee",},
        ),
        migrations.CreateModel(
            name="MessageUser",
            fields=[
                ("mid", models.AutoField(primary_key=True, serialize=False)),
                ("m_ctype", models.CharField(max_length=255)),
                ("m_sntitle", models.CharField(max_length=255)),
                ("m_sname", models.CharField(max_length=255)),
                ("m_snadress", models.CharField(max_length=255)),
                ("m_snage", models.CharField(max_length=255)),
                ("m_ccorg", models.CharField(max_length=255)),
                ("m_cplace", models.CharField(max_length=255)),
                ("m_ctime", models.CharField(max_length=255)),
                ("m_bperson", models.CharField(max_length=255)),
                ("m_nbperson", models.CharField(max_length=255)),
                ("m_damege_em", models.CharField(max_length=255)),
                ("m_sbmoney", models.CharField(max_length=255)),
                ("m_psigned", models.CharField(max_length=255)),
                ("m_loan", models.CharField(max_length=255)),
                ("m_tax", models.CharField(max_length=255)),
                ("m_file", models.CharField(max_length=255)),
                ("m_audio", models.CharField(max_length=255)),
                ("m_video", models.CharField(max_length=255)),
                ("m_image", models.CharField(max_length=255)),
                ("m_timestamp", models.DateTimeField(auto_now_add=True)),
            ],
            options={"db_table": "message",},
        ),
        migrations.CreateModel(
            name="RandomUser",
            fields=[
                ("aid", models.AutoField(primary_key=True, serialize=False)),
                ("complaint_key", models.IntegerField()),
            ],
            options={"db_table": "anonuser",},
        ),
        migrations.CreateModel(
            name="Result",
            fields=[
                ("rid", models.AutoField(primary_key=True, serialize=False)),
                ("rApproveorReject", models.CharField(max_length=255)),
                ("rReason", models.CharField(max_length=255)),
                ("rfeedback", models.CharField(max_length=255)),
                ("rcomment", models.CharField(max_length=255)),
                ("rstatus_bar", models.CharField(max_length=255)),
                (
                    "aid",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="anticoru.randomuser",
                    ),
                ),
                (
                    "eid",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="anticoru.employee",
                    ),
                ),
                (
                    "mid",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="anticoru.messageuser",
                    ),
                ),
            ],
            options={"db_table": "result",},
        ),
        migrations.DeleteModel(name="CustomUser",),
        migrations.AddField(
            model_name="messageuser",
            name="aid",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE, to="anticoru.randomuser"
            ),
        ),
    ]
