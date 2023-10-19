from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from . import views
from store.controller import authview,cart

urlpatterns = [
    path('', views.home, name='home'),
    path('collections/<str:slug>', views.collectionsview, name='collectionsview'),
    path('collections/<str:cate_slug>/<str:prod_slug>', views.productview, name='productview'),
    path('accounts/signup', authview.register,name='register'),
    path('accounts/login', authview.loginPage ,name='login'),
    path('accounts/logout', authview.logoutPage ,name='logout'),

    path('product-list',views.productlistAjax),
    path('searchProduct',views.searchProduct,name='searchProduct'),

    path('add-to-cart',cart.addToCart,name='addToCart'),
    path('update-cart',cart.updateCart,name='updateCart'),
    path('delete-cart-item',cart.deleteCartItem,name='deleteCartitem'),
    path('cart',cart.viewCart,name='cart'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,document_root = settings.MEDIA_ROOT)