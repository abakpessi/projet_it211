from django.urls import path
from users.views import home, register, createur, abonnee, post_list, deconnexion, create_post, modifier, table, supprimer
from django.conf import settings
from django.conf.urls.static import static
urlpatterns=[
    path('', home, name='home'),
    path('register/', register, name='register'),
    path('createur/', createur, name='createur'),
    path('abonnee/', abonnee, name='abonnee'),
    path('post_list/', post_list, name='post_list'),
    path('logout/', deconnexion, name='logout'),
    path('users/create/', create_post, name='create'),
    path('users/table/modifier/<int:my_id>/', modifier, name='modifier'),
    path('users/supprimer/<int:my_id>/', supprimer, name='supprimer'),
    path('users/table/', table, name='table'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
    document_root=settings.MEDIA_ROOT)