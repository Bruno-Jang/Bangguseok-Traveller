from django.db import models

from utils.time_stamp import TimeStampModel
from ..users.models   import User


class Menu(models.Model):
    name = models.CharField(max_length=20)
    
    class Meta:
        db_table = 'menus'

class Product(TimeStampModel):
    name        = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    user        = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    menu        = models.ForeignKey('Menu', on_delete=models.SET_NULL, null=True)
    tags        = models.ManyToManyField('Tag', through='ProductTag')
    main_image  = models.OneToOneField('MainImage', on_delete=models.SET_NULL, null=True)
    
    class Meta:
        db_table = 'products'

class MainImage(models.Model):
    image_url = models.CharField(max_length=1000)
    
    class Meta:
        db_table = 'main_images'
    
class SubImage(models.Model):
    image_url = models.CharField(max_length=1000)
    product   = models.ForeignKey('Product', on_delete=models.CASCADE)

    class Meta:
        db_table = 'sub_images'

class TagCategory(models.Model):
    name = models.CharField(max_length=20)
    
    class Meta:
        db_table = 'tag_categories'
    
class Tag(models.Model):
    name         = models.CharField(max_length=20)
    tag_category = models.ForeignKey('TagCategory', models.CASCADE)

    class Meta:
        db_table = 'tags'

class ProductTag(models.Model):
    product = models.ForeignKey('Product', on_delete=models.CASCADE)
    tag     = models.ForeignKey('Tag', on_delete=models.CASCADE)
    
    class Meta:
        db_table = 'product_tags'
