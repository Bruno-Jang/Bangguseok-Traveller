from django.http      import JsonResponse
from django.views     import View
from django.db.models import Q

from products.models import Product, SubImage, TagCategory, Tag

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
        
class TagListView(View):
    def get(self, request):
        try:
            tag_categories = TagCategory.objects.all()
            result         = [{
                'tag_category_id': categories.id,
                'tag_category_name': categories.name,
                'tags': [{
                    'id': category.id,
                    'name': category.name,
                } for category in categories.tag_set.all()]
            } for categories in tag_categories]
            return JsonResponse({'result': result}, status=200)
        except TagCategory.DoesNotExist:
            return JsonResponse({'message': 'TAG_CATEGORY_DOES_NOT_EXIST'}, status=404)
        except ValueError:
            return JsonResponse({'message': 'VALUE_ERROR'}, status=404)
            
class ProductListView(View):
    def get(self, request, *args, **kwargs):
        try:
            conti    = request.GET.get('conti')
            area     = request.GET.get('area')
            theme    = request.GET.get('theme')
            person   = request.GET.get('person')
            offset   = int(request.GET.get('offset', 1))
            limit    = int(request.GET.get('limit', 4))
            products = Product.objects.all()
                
            if conti:
                products = products.filter(producttag__tag__name=conti)

            if area:
                products = products.filter(producttag__tag__name=area)
                
            if theme:
                products = products.filter(producttag__tag__name=theme)
                
            if person:
                products = products.filter(producttag__tag__name=person)

            product_data = [
                {
                    'user'        : product.user.nickname,
                    'user_type'   : product.user.user_type.name,
                    'product_id'  : product.id,
                    'product_name': product.name,
                    'main_image'  : product.main_image.image_url,
                    'created_date': product.created_at.strftime('%Y년 %m월 %d일'),
                } for product in products [offset: offset * limit]
            ]
            return JsonResponse({'result': product_data}, status=200)
        except TagCategory.DoesNotExist:
            return JsonResponse({'message': 'TAG_CATEGORY_DOES_NOT_EXIST'}, status=404)
        except ValueError:
            return JsonResponse({'message': 'VALUE_ERROR'}, status=404)
