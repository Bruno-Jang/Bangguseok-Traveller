from django.urls import path

from .views import LogInView


urlpatterns = [
    path('/login/kakao/<int:user_type>', LogInView.as_view()),
]
