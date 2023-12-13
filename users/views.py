from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from users.form import UserForm
from .models import Posts
from .form import PostForm


# Create your views here.

def home(request):
    error=''
    if request.method=="POST":
        username=request.POST['username']
        password=request.POST['password']
        user=authenticate(request,username=username, password=password)
        if user is not None:
            login(request, user)
            if user.is_createur:
                return redirect('createur')
            else:
                return redirect('abonnee')
        else:
            error="password ou username incorrect"
    return render(request, 'login.html', {'error':error})

def register(request):
    form=UserForm()
    if request.method =="POST":
        form=UserForm(data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
    return render(request,'register.html', {'form':form})

def createur(request):
    return render(request, 'createur.html')

def abonnee(request):
    return render(request, 'abonnee.html')

def post_list(request):
    post=Posts.objects.all()
    context={
        'posts':post
    }
    return render(request, 'post_list.html', context)

def deconnexion(request):
    logout(request)
    return redirect('home')

def create_post(request):
    form = PostForm(request.POST or None)
    messages=''
    if form.is_valid():
        form.save()
        form=PostForm()
        messages="your post was created successfully"
    return render(request, 'create.html', {'form':form, 'message':messages})

def modifier(request, my_id):
    obj=Posts.objects.get(id=my_id)
    form = PostForm(request.POST or None, instance=obj)
    messages=''
    if form.is_valid():
        form.save()
        form=PostForm()
        messages="Votre post a été modifié avec succès!"
    return render(request, 'modifier.html', {'form':form, 'message':messages})

def table(request):
    obj=Posts.objects.all()
    return render(request, 'users/table.html', {'obj':obj})

def supprimer(request, my_id):
    obj=Posts.objects.get(id=my_id)
    titre=obj.titre
    if request.method=="POST":
        obj.delete()
        return redirect('table')
    return render(request, 'supprimer.html', {'titre':titre})
