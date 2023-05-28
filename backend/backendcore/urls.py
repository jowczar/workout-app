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

    path('v2/challenge', views.challenge, name="get_challenges"),
    path('v2/challenge/<id>', views.delete_challenge, name="delete_challenges"),

    path('v2/plan', views.plan, name="plan"),
    path('v2/plan/<plan_id>', views.addExerciseToPlan, name="plan"),
    path('v2/plan_name/<plan_id>', views.changePlanName, name="plan"),
    path('v2/plan/<plan_id>/sets', views.exercise),

    path('calendar_view/<str:from_date>/<str:to_date>', views.calendar_view, name='calendar'),
    path('set_day/<int:day>/<int:month>/<int:year>', views.set_day, name='set_day'),
    # path('v2/plan/<id>', views.get_plan, name='get_plan')
]
