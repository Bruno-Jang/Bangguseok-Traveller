import jwt

from django.test   import TransactionTestCase, Client
from unittest.mock import MagicMock, patch

from bangguseok_traveller.settings import SECRET_KEY, ALGORITHM
from users.models                  import User, UserType

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
        
        User.objects.create(
            id        = 1,
            kakao_id  = '1234567',
            email     = 'test-case@naver.com',
            nickname  = 'test-name',
            user_type = UserType.objects.get(name='Mentor')
        )

    def tearDown(self):
        UserType.objects.all().delete()
        User.objects.all().delete()
        
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
        decoded_kakao_id = jwt.decode(token, SECRET_KEY, ALGORITHM)['kakao_id']
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
        