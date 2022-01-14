import json

from django.http  import JsonResponse
from django.views import View

from products.models import Product, SubImage
from votes.models    import Vote

class ProductDetailView(View):
    def get(self, request, product_id):
        try:
            product    = Product.objects.get(id=product_id)
            sub_images = SubImage.objects.filter(product_id=product.id)

            if not SubImage.objects.filter(product_id=product.id).exists():
                return JsonResponse({'message': 'IMAGE_DOES_NOT_EXIST'}, status = 400)

            data = {
                'product_name' : product.name,
                'description'  : product.description,
                'user'         : product.user.nickname,
                'main_image'   : product.main_image.image_url,
                'sub_image'    : [sub_image.image_url for sub_image in sub_images],
                'tag'          : [tags.name for tags in product.tags.all()]     
            }

            return JsonResponse({'result': data}, status = 200)
        
        except Product.DoesNotExist:
            return JsonResponse({'message': 'DOES_NOT_EXIST'}, status = 404)