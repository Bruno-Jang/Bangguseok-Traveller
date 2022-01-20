from django.urls import path
from votes.views import VoteView

urlpatterns = [
    path('', VoteView.as_view())    
]