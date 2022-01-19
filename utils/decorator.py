import jwt

from django.http            import JsonResponse
from django.core.exceptions import ObjectDoesNotExist

from bangguseok_traveller.settings import SECRET_KEY, ALGORITHM
from users.models                  import User

def login_decorator(func):
    def wrapper(self, request, *args, **kwargs):
        try:
            if not request.headers.get('Authorization'):
                return JsonResponse({'message': 'NO_TOKEN'}, status=403)
            
            access_token  = request.headers.get('Authorization')
            decoded_token = jwt.decode(access_token, SECRET_KEY, ALGORITHM)
            user          = User.objects.get(kakao_id=decoded_token['id'])
            request.user  = user
            
        except jwt.exceptions.DecodeError:
            return JsonResponse({'message' : 'INVALID_TOKEN'}, status = 403)
        
        except ObjectDoesNotExist:
            return JsonResponse({'message' : 'INVALID_USER'}, status = 403)
        
        return func(self, request, *args, **kwargs)
    return wrapper