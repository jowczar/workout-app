from django.shortcuts import render, HttpResponse

# Create your views here.

def hello_django(request):
    return HttpResponse("Hello Django!")
