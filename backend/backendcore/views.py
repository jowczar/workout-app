from django.shortcuts import render, HttpResponse
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view, permission_classes
import pyrebase

config = {
    "apiKey": "AIzaSyBO2fdyPfuae8loDfb2L75AsLWPURnanZY",
    "authDomain": "workout-app-e3490.firebaseapp.com",
    "databaseURL": "https://workout-app-e3490-default-rtdb.europe-west1.firebasedatabase.app",
    "projectId": "workout-app-e3490",
    "storageBucket": "workout-app-e3490.appspot.com",
    "messagingSenderId": "456746777732",
    "appId": "1:456746777732:web:857ba3dbbffb4fca3f56d1"
}
firebase = pyrebase.initialize_app(config)
authe = firebase.auth()
database = firebase.database()

# Create your views here.
@api_view(['GET'],)
@permission_classes([AllowAny],)
def hello_django(request):
    print("Request received!")
    return Response({'message:Request successfully returned! Hello Django'}, status= 200)

@api_view(['Get','POST'],)
@permission_classes([AllowAny],)
def index(request):
    name = database.child('Data').child('Name').get().val()
    id = database.child('Data').child('Id').get().val()
    return render(request, 'index.html', {
        "name":name,
        "id":id,
    })