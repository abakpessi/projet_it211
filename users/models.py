from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class User(AbstractUser):
    nom=models.CharField(max_length=50)
    prenom=models.CharField(max_length=50)
    date_naissance=models.DateField(auto_now = False , auto_now_add = False, null=True)
    is_createur=models.BooleanField(default=False)
    is_abonnee=models.BooleanField(default=True)

class Posts(models.Model):
    createur=models.ForeignKey('User', on_delete=models.CASCADE)
    titre=models.CharField(max_length=30)
    description=models.TextField()
    date_post=models.DateTimeField(auto_now = False , auto_now_add = False, null=True)
    image=models.ImageField(upload_to='images', blank=True)

    class Meta:
        verbose_name = ("Post")
        verbose_name_plural = ("Posts")

    def __str__ (self):
        return self.titre
