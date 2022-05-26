import jwt

from django.test   import TransactionTestCase, Client
from unittest.mock import MagicMock, patch

from bangguseok_traveller.settings import SECRET_KEY, ALGORITHM
from users.models                  import User, UserType, Profile

class LogInTest(TransactionTestCase):
    def setUp(self):
        UserType.objects.create(
            id   = 1,
            name = 'Mentor'
        )
        
        UserType.objects.create(
            id   = 2,
            name = 'Mentee'
        )
        
        profile_list = [
            Profile(
                id        = 1,
                image_url = 'profile_image1'
            ),
            Profile(
                id        = 2,
                image_url = 'profile_image2'
            ),
            Profile(
                id        = 3,
                image_url = 'profile_image3'
            ),
            Profile(
                id        = 4,
                image_url = 'profile_image4'
            ),
        ]
        Profile.objects.bulk_create(profile_list)
        
        user_list = [
            User(
                id              = 1,
                kakao_id        = 111111,
                email           = 'test111@naver.com',
                nickname        = 'test111',
                user_type_id    = 1,
                user_profile_id = 1,
            ),
            User(
                id              = 2,
                kakao_id        = 222222,
                email           = 'test222@naver.com',
                nickname        = 'test222',
                user_type_id    = 2,
                user_profile_id = 2,
            ),
            User(
                id              = 3,
                kakao_id        = 333333,
                email           = 'test333@naver.com',
                nickname        = 'test333',
                user_type_id    = 1,
                user_profile_id = 3,
            ),
            User(
                id              = 4,
                kakao_id        = 444444,
                email           = 'test444@naver.com',
                nickname        = 'test444',
                user_type_id    = 2,
                user_profile_id = 4,
            ),
        ]
        User.objects.bulk_create(user_list)

    def tearDown(self):
        UserType.objects.all().delete()
        User.objects.all().delete()
        Profile.objects.all().delete()
        
    @patch('users.views.requests')
    def test_success_login(self, mocked_requests):
        class MockedResponse:
            def json(self):
                return {
                    'id': '1234567',
                    'properties': {
                        'nickname': 'test-case'},
                    'kakao_account': {
                        'email': 'test-case@naver.com'
                    }
                }
        client              = Client()
        header              = {'HTTP_Authorization': 'kakao_token'}
        mocked_requests.get = MagicMock(return_value=MockedResponse())
        response            = client.get('/users/login/kakao/1', content_type='application/json', **header)

        self.assertEqual(response.status_code, 200)
        
        token            = response.json()['token']
        decoded_kakao_id = jwt.decode(token, SECRET_KEY, ALGORITHM)['id']
        kakao_user       = User.objects.get(kakao_id=decoded_kakao_id)
        
        self.assertEqual(kakao_user.kakao_id, 1234567)

    @patch('users.views.requests')
    def test_fail_login_when_usertype_does_not_exist(self, mocked_requests):
        class MockedResponse:
            def json(self):
                return {
                    'id': '1234567',
                    'properties': {
                        'nickname': 'test-case'},
                    'kakao_account': {
                        'email': 'test-case@naver.com'
                    }
                }
        client = Client()
        header              = {'HTTP_Authorization': 'kakao_token'}
        mocked_requests.get = MagicMock(return_value=MockedResponse())
        response            = client.get('/users/login/kakao/3', content_type='application/json', **header)
        
        self.assertEqual(response.status_code, 404)
        
    @patch('users.views.requests')
    def test_fail_login_kakao_properties_does_not_exist(self, mocked_requests):
        class MockedResponse:
            def json(self):
                return {
                    'id': '1234567',
                    'kakao_account': {
                        'email': 'test-case@naver.com'
                    }
                }
        client = Client()
        header              = {'HTTP_Authorization': 'kakao_token'}
        mocked_requests.get = MagicMock(return_value=MockedResponse())
        response            = client.get('/users/login/kakao/1', content_type='application/json', **header)
        
        self.assertEqual(response.status_code, 400)
        