# Generated by Django 4.0.1 on 2022-01-20 21:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('image_url', models.CharField(max_length=1000)),
            ],
            options={
                'db_table': 'profiles',
            },
        ),
        migrations.CreateModel(
            name='UserType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'user_types',
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('kakao_id', models.IntegerField()),
                ('email', models.CharField(max_length=50)),
                ('nickname', models.CharField(max_length=20)),
                ('user_profile', models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to='users.profile')),
                ('user_type', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='users.usertype')),
            ],
            options={
                'db_table': 'users',
            },
        ),
    ]
