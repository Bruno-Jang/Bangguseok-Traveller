from django.urls import path

from .views import ProductDetailView, ProductListView, TagListView, ProductMainView, ProductAllView


urlpatterns = [
    path('', ProductMainView.as_view()),
    path('/<int:product_id>', ProductDetailView.as_view()),
    path('/filter', ProductListView.as_view()),
    path('/categories', TagListView.as_view()),
    path('/list', ProductAllView.as_view()),
]    
