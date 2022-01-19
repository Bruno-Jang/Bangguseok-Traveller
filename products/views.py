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
            
            votes  = Vote.objects.filter(product_id=product_id)
            result = {
                'product_data' : {
                    'product_id'   : product.id,
                    'product_name' : product.name,
                    'description'  : product.description,
                    'user_id'      : product.user.id,
                    'user'         : product.user.nickname,
                    'main_image'   : product.main_image.image_url,
                    'sub_image'    : [sub_image.image_url for sub_image in sub_images],
                    'tag'          : [tags.name for tags in product.tags.all()],
                    'created_at'   : product.created_at
            },
                'vote_data': [{
                    'voted_user_id'      : vote.user.id,
                    'voted_user_nickname': vote.user.nickname,
                    'voted_user_image'   : vote.user.user_profile.image_url if not vote.user.user_profile == None else '',
                    'user_type'          : vote.user.user_type.name,
                    'vote1'              : int(vote.sensibility),
                    'vote2'              : int(vote.intent_to_visit),
                    'vote3'              : int(vote.impression_on_picture),
                    'score_average'      : format((int(vote.sensibility) + int(vote.intent_to_visit) + int(vote.impression_on_picture)) / 3, '.2f')
                } for vote in votes]
            }
            return JsonResponse({'result': result}, status = 200)
        except Product.DoesNotExist:
            return JsonResponse({'message': 'DOES_NOT_EXIST'}, status = 404)
