import json

from django.http  import JsonResponse
from django.views import View

from products.models import Product
from votes.models    import Vote
from utils.decorator import login_decorator

class VoteView(View):
    @login_decorator
    def post(self, request):
        try:
            data = json.loads(request.body)

            user_id               = request.user.id
            product_id            = data['product_id']
            sensibility           = data['sensibility']
            intent_to_visit       = data['intent_to_visit']
            impression_on_picture = data['impression_on_picture']
            
            if Vote.objects.filter(user_id = user_id, product_id = product_id).exists():
                return JsonResponse({'message': 'ALREADY_VOTED'}, status = 400)

            Vote.objects.create(
                user_id               = user_id,
                product_id            = product_id,
                sensibility           = sensibility,
                intent_to_visit       = intent_to_visit,
                impression_on_picture = impression_on_picture,
                is_voted              = True     
            )
            return JsonResponse({'message': 'VOTE_SUCCESS'}, status = 201)

        except KeyError:
            return JsonResponse({'message': 'KEY_ERROR'}, status = 400)

        except Product.DoesNotExist:
            return JsonResponse({'message': 'DOES_NOT_EXIST'}, status = 404)
    