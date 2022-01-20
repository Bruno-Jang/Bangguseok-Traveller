from django.db import models

from utils.time_stamp import TimeStampModel

class UserType(models.Model):
    name = models.CharField(max_length=20)
    
    class Meta:
        db_table = 'user_types'

class User(TimeStampModel):
    kakao_id     = models.IntegerField()
    email        = models.CharField(max_length=50)
    nickname     = models.CharField(max_length=20)
    user_type    = models.ForeignKey('UserType', on_delete=models.SET_NULL, null=True)
    user_profile = models.OneToOneField('Profile', on_delete=models.SET_NULL, null=True)
    
    class Meta:
        db_table = 'users'

class Profile(TimeStampModel):
    image_url = models.CharField(max_length=1000)
    
    class Meta:
        db_table = 'profiles'
