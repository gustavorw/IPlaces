# Generated by Django 2.2.17 on 2020-12-05 21:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Place',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('city', models.CharField(max_length=255)),
                ('photo_url', models.URLField()),
            ],
        ),
        migrations.RemoveField(
            model_name='photos',
            name='girl',
        ),
        migrations.DeleteModel(
            name='Girl',
        ),
        migrations.DeleteModel(
            name='Photos',
        ),
    ]