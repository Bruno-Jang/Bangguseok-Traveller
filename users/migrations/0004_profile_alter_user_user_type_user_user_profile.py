from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_alter_user_email'),
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
                'db_table': 'profile',
            },
        ),
        migrations.AlterField(
            model_name='user',
            name='user_type',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='users.usertype'),
        ),
        migrations.AddField(
            model_name='user',
            name='user_profile',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to='users.profile'),
        ),
    ]
