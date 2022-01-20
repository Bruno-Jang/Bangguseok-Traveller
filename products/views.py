from django.http  import JsonResponse
from django.views import View
from django.db.models import Avg, Count

from votes.models    import Vote
from products.models import Product, SubImage, TagCategory

class ProductMainView(View):
    def get(self, request):
        try:

            offset = int(request.GET.get('offset', 0))
            limit  = int(request.GET.get('limit', 4))
             
            main_product    = Product.objects.order_by('?').first()
            random_products = Product.objects.order_by('?')[offset:offset+limit]
            recent_products = Product.objects.all().order_by('-created_at')[offset:offset+limit]


            main_product_vote_result = Vote.objects.filter(product_id=main_product.id).aggregate(
                sensibility = Avg('sensibility'), 
                intent_to_visit = Avg('intent_to_visit'), 
                impression_on_picture = Avg('impression_on_picture')
            )

            data = [
                {
                'section'   : 'MAIN',
                'product' : {
                'product_id'   : main_product.id,    
                'product_name' : main_product.name,
                'main_image'   : main_product.main_image.image_url,
                'created_at'   : main_product.created_at.strftime('%Y년 %m월 %d일'),
                'user'         : main_product.user.nickname,
                'score'        : main_product_vote_result,
            }},
                {
                'section'   : 'RANDOM',
                'product' : [{
                'product_id'   : random_product.id,    
                'product_name' : random_product.name,
                'main_image'   : random_product.main_image.image_url,
                'created_at'   : random_product.created_at.strftime('%Y년 %m월 %d일'),
                'user'         : random_product.user.nickname,
            } for random_product in random_products]},
            {
                'section'   : 'NEW',
                'product' : [{
                'product_id'   : recent_product.id,    
                'product_name' : recent_product.name,
                'main_image'   : recent_product.main_image.image_url,
                'created_at'   : recent_product.created_at.strftime('%Y년 %m월 %d일'),
                'user'         : recent_product.user.nickname,
            } for recent_product in recent_products]},
            ] 

            return JsonResponse({'message': 'SUCCESS', 'result': data}, status = 200)
        
        except Product.DoesNotExist:
            return JsonResponse({'message': 'DOES_NOT_EXIST'}, status = 404)

class ProductAllView(View):
    def get(self, request):
        try:
            all_products = Product.objects.all().order_by('-created_at')

            data = [
                {
                'section'   : 'ALL',
                'product' : [{
                'product_id'   : product.id,    
                'product_name' : product.name,
                'main_image'   : product.main_image.image_url,
                'created_at'   : product.created_at.strftime('%Y년 %m월 %d일'),
                'user'         : product.user.nickname,
            } for product in all_products ]}
            ] 

            return JsonResponse({'message': 'SUCCESS', 'result': data}, status = 200)
        
        except Product.DoesNotExist:
            return JsonResponse({'message': 'DOES_NOT_EXIST'}, status = 404)

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
                    'created_at'   : product.created_at.strftime('%Y년 %m월 %d일')
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
 
class TagListView(View):
    def get(self, request):
        try:
            tag_categories = TagCategory.objects.all()
            result         = [{
                'tag_category_id': categories.id,
                'tag_category_name': categories.name,
                'tags': [{
                    'id': tag.id,
                    'name': tag.name,
                } for tag in categories.tag_set.all()]
            } for categories in tag_categories]
            return JsonResponse({'result': result}, status=200)
        except TagCategory.DoesNotExist:
            return JsonResponse({'message': 'TAG_CATEGORY_DOES_NOT_EXIST'}, status=404)
        except ValueError:
            return JsonResponse({'message': 'VALUE_ERROR'}, status=404)
            
class ProductListView(View):
    def get(self, request, *args, **kwargs):
        try:
            continent = request.GET.get('conti')
            area      = request.GET.get('area')
            theme     = request.GET.get('theme')
            person    = request.GET.get('person')
            
            page      = int(request.GET.get('page', 1))
            limit     = int(request.GET.get('limit', 8))
            offset    = (page - 1) * limit
            
            products = Product.objects.all()
                
            if continent:
                products = products.filter(producttag__tag__name=continent)

            if area:
                products = products.filter(producttag__tag__name=area)
                
            if theme:
                products = products.filter(producttag__tag__name=theme)
                
            if person:
                products = products.filter(producttag__tag__name=person)

            product_data = {
                'quantity'     : products.count(),
                'product_data' : [{
                    'user'        : product.user.nickname,
                    'user_type'   : product.user.user_type.name,
                    'product_id'  : product.id,
                    'product_name': product.name,
                    'main_image'  : product.main_image.image_url,
                    'created_date': product.created_at.strftime('%Y년 %m월 %d일'),
                } for product in products [offset: offset + limit]]
            }
            return JsonResponse({'result': product_data}, status=200)
        except TagCategory.DoesNotExist:
            return JsonResponse({'message': 'TAG_CATEGORY_DOES_NOT_EXIST'}, status=404)
        except ValueError:
            return JsonResponse({'message': 'VALUE_ERROR'}, status=404)
