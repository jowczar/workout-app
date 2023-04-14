from django.urls import path
from . import views

urlpatterns = [
    path('hellodjango', views.hello_django, name ='hellodjango'),
    path('home', views.home),
    path('', views.signIn),
    path('postsignIn/', views.postSignIn, name ='postsignIn'),
    path('signUp/', views.signUp, name="signUp"),
    path('logout/', views.logout, name="logout"),
    path('postsignUp/', views.postsignUp),
    path('reset/', views.reset_password, name='reset'),
    path('postReset/', views.postReset),
    path('list', views.list, name="add_list"),
    path('update_list', views.update_list, name="update_list"),
    path('remove_list', views.remove_list, name="remove_list")
    
    
]
