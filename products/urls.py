from django.urls import path
from products.views import ProductDetailView, ProductListView, TagListView

urlpatterns = [
    path('/<int:product_id>', ProductDetailView.as_view()),
    path('', ProductListView.as_view()),
    path('/categories', TagListView.as_view()),
]