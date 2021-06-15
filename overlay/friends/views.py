from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Friend

# Create your views here.


def index(request):
    friends = Friend.objects.all()
    template = loader.get_template('index.html')
    context = {
        'friend_list': friends,
    }
    return HttpResponse(template.render(context, request))
