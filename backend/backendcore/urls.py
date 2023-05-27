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
    path('remove_list', views.remove_list, name="remove_list"),
    path('get_list_of_plans', views.get_list_of_plans, name="get_list_of_plans"),
    path('get_plan', views.get_plan, name="get_plan"),
    path('calendar_view/<str:from_date>/<str:to_date>/', views.calendar_view),
    path('set_day/<int:day>/<int:month>/<int:year>/', views.set_day, name='set_day')
]
