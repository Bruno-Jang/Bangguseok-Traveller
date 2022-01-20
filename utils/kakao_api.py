import requests

from django.core.exceptions import ValidationError

class KakaoAPI:
    def __init__(self, access_token):
        self.access_token = access_token
        self.user_url     = 'https://kapi.kakao.com/v2/user/me'

    def get_kakao_user(self):
        headers  = {"Authorization": f"Bearer {self.access_token}"}
        response = requests.get(self.user_url, headers=headers, timeout=3)

        if not response.status_code == 200:
            raise ValidationError('KAKAO_ERROR')
        return response.json()
    