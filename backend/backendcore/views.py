from django.shortcuts import render, HttpResponse
from django.http import HttpResponse, JsonResponse
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view, permission_classes
from django.contrib import auth
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate
import pyrebase
from backendcore.help.test_list import *
config={
    "apiKey": "AIzaSyBO2fdyPfuae8loDfb2L75AsLWPURnanZY",
    "authDomain": "workout-app-e3490.firebaseapp.com",
    "databaseURL": "https://workout-app-e3490-default-rtdb.europe-west1.firebasedatabase.app",
    "projectId": "workout-app-e3490",
    "storageBucket": "workout-app-e3490.appspot.com",
   " messagingSenderId": "456746777732",
    "appId": "1:456746777732:web:857ba3dbbffb4fca3f56d1",
}
firebase=pyrebase.initialize_app(config)
authe = firebase.auth()
database=firebase.database()
 
# Create your views here.
@api_view(['GET'],)
@permission_classes([AllowAny],)
def hello_django(request):
    print("Request received!")
    return Response({'message:Request successfully returned! Hello Django'}, status= 200)

def signIn(request):
    # return HttpResponse({'url': 'http://127.0.0.1:8000/'})
    return render(request,"Login.html")

@login_required    
def home(request):
    # return HttpResponse({'url': 'http://127.0.0.1:8000/Home'})
    return render(request,"Home.html")
 
def postSignIn(request):
    if request.method == "POST":
        email=request.POST.get('email')
        password=request.POST.get('password')
        try:
            # if there is no error then signin the user with given email and password
            user=authe.sign_in_with_email_and_password(email,password)
        except:
            message="Invalid Credentials!!Please ChecK your Data"
            return JsonResponse({"error": message})
    
        session_id = user['idToken']
        data = {
            "uid": str(session_id),
            "email": email
            }
        return JsonResponse(data)
    
@login_required 
def logout(request):
    try:
        del request.session['uid']
        message = "Successfully logged out"
        return JsonResponse({'message': message})
    except:
        message = "An error occurred while logging out"
        return JsonResponse({'error': message})
 
def signUp(request):
    # return HttpResponse('signUp')
    return render(request,"Registration.html")
 
 
def postsignUp(request):
     email = request.POST.get('email')
     password = request.POST.get('pass')
     name = request.POST.get('name')
     try:
        # creating a user with the given email and password
        user=authe.create_user_with_email_and_password(email,password)
        print("user: ", user)
        uid = user['localId']
        print("uid: ", uid)
        # idtoken = request.session['uid']
        # print("session token: ", idtoken)
        response = {'success': True}
        print("succes")
     except:
        response = {'success': False}
        print("you loose")
     return JsonResponse(response)


def reset_password(request):
    return HttpResponse('Reset')
 
def postReset(request):
    email = request.POST.get('email')
    try:
        authe.send_password_reset_email(email)
        message  = "A email to reset password is successfully sent"
        return JsonResponse({'success': True, 'message': message})
    except:
        message  = "Something went wrong, Please check the email you provided is registered or not"
        return JsonResponse({'success': False, 'message': message})

# Add new training plan
def list(request):
    if request.method == 'POST':
        user_UID = request.POST.get('user_UID')
        plan_name = request.POST.get('plan_name')
        plans = request.POST.get('plan')
        try:
            database.child("Data").child(user_UID).child("plans").child(plan_name).set(plans)
            result = "Successfully stored data to the database"
        except:
            result = "Failed to save data to the database"
    else: result = "Error, no parameter passed" 
    return JsonResponse(result, safe=False)
            

# remove training plan
def remove_list(request):
    if request.method == 'POST':
        user_UID = request.POST.get('user_UID')
        plan_name = request.POST.get('plan_name')
        try:
            database.child("Data").child(user_UID).child("plans").child(plan_name).remove()
            result = "Successfully deleted data from the database"
        except:
            result = "Failed to delete data from the database"
    else: result = "Error, no parameter passed" 
    return JsonResponse(result, safe=False)

# update list
def update_list(request):
    if request.method == 'POST':
        user_UID = request.POST.get('UserUID', '')
        plan_name = request.POST.get('plan_name', '')
        plans = request.POST.get('plan')
        try:
            database.child("Data").child(user_UID).child("plans").child(plan_name).update(plans)
            result = "The data has been updated."
        except:
            result = "Database update failed"
    else:
        result = "Error, no parameter passed" 
    return JsonResponse(result, safe=False)
        
# get_list_of_plans
def get_list_of_plans(request):
    if request.method == 'POST':
        user_UID = request.POST.get('UserUID', '')
        try:
            list_of_plans = database.child("Data").child(user_UID).child("plans").get()
            result = [plan for plan in list_of_plans.val()]
        except:
            result = "Failed to fetch data from database."
    else:
        result = "Error, no parameter passed"
    return JsonResponse(result, safe=False)

# get plan
def get_plan(request):
    if request.method == 'POST':
        user_UID = request.POST.get('UserUID', '') 
        plan_name = request.POST.get('plan_name', '')       
        try:
            plan = database.child("Data").child(user_UID).child("plans").child(plan_name).get()
            result = plan.val()  
        except:
            result = "Failed to fetch data from database."
    else:
        result = "Error, no parameter passed"

    return JsonResponse(result, safe=False)
