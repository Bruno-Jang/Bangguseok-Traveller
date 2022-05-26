from django.urls import path, include


urlpatterns = [
    path('api/v1/users', include('apps.users.urls')),
    path('api/v1/products', include('apps.products.urls')),
    path('api/v1/votes', include('apps.votes.urls')),
]
