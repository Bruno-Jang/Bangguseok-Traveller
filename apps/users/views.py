import jwt
import requests

from django.http.response import JsonResponse
from django.views         import View

from bangguseok_traveller.settings import SECRET_KEY, ALGORITHM
from .models                  import User, UserType


class LogInView(View):
    def get(self, request, user_type):
        try:
            access_token    = request.headers.get('Authorization')
            profile_request = requests.get(
                'https://kapi.kakao.com/v2/user/me', headers={'Authorization': f'Bearer {access_token}'},
            )
            profile    = profile_request.json()
            properties = profile.get('properties')
            kakao_id   = profile.get('id')
            email      = profile.get('kakao_account').get('email')
            
            if not properties:
                return JsonResponse({'message': 'ACCEPT_THE_TERMS_AND_CONDITIONS'}, status=400)
            
            nickname  = properties.get('nickname')
            user_type = UserType.objects.get(pk=user_type)
                
            user, is_created = User.objects.update_or_create(
                kakao_id = kakao_id,
                defaults = {
                    'email'    : email,
                    'nickname' : nickname,
                    'user_type': user_type
                }
            )
            token = jwt.encode({'id': user.kakao_id}, SECRET_KEY, ALGORITHM)
            return JsonResponse({'token': token}, status=200)
        except UserType.DoesNotExist:
            return JsonResponse({'message': 'USERTYPE_DOES_NOT_EXIST'}, status=404)
