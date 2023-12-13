from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import get_user_model
from .models import Posts

User=get_user_model()

class UserForm(UserCreationForm):
    class Meta:
        model=User
        fields=[
            'username',
            'nom',
            'prenom',
            'date_naissance',
            'password1',
            'password2',
        ]

class PostForm(forms.ModelForm ):
    class Meta:
        model = Posts
        fields = [
            'createur',
            'titre',
            'description',
            'date_post',
            'image'
        ]