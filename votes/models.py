from django.db import models

from utils.time_stamp import TimeStampModel
from users.models     import User
from products.models  import Product

class Vote(TimeStampModel):
    sensibility            = models.DecimalField(max_digits=4, decimal_places=2)
    intent_to_visit        = models.DecimalField(max_digits=4, decimal_places=2)
    impresstion_on_picture = models.DecimalField(max_digits=4, decimal_places=2)
    is_voted               = models.BooleanField(default=False)
    user                   = models.ForeignKey(User, on_delete=models.CASCADE)
    product                = models.ForeignKey(Product, on_delete=models.CASCADE)

    class Meta:
        db_table = 'votes'
