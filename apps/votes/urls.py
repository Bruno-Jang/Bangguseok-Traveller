from django.urls import path
from .views import VoteView


urlpatterns = [
    path('', VoteView.as_view())    
]
