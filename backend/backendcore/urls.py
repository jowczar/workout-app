from django.urls import path
from . import views

urlpatterns = [
    path('hellodjango', views.hello_django, name ='hellodjango'),
    path('home', views.home),
    path('', views.signIn),
    path('postsignIn/', views.postsignIn),
    path('signUp/', views.signUp, name="signup"),
    path('logout/', views.logout, name="log"),
    path('postsignUp/', views.postsignUp),
    path('reset/', views.reset),
    path('postReset/', views.postReset),
    
]
