# Generated by Django 4.0.1 on 2022-01-20 16:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0004_profile_alter_user_user_type_user_user_profile'),
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='user',
        ),
        migrations.AddField(
            model_name='product',
            name='user',
            field=models.ManyToManyField(through='votes.Vote', to='users.User'),
        ),
    ]