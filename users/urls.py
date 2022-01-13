from django.urls import path

from users.views import LogInView

urlpatterns = [
    path('/login/kakao/<int:user_type>', LogInView.as_view()),
]