from django.urls import path
from photo import views

app_name = 'photo'

urlpatterns = [
   path('places', views.PlaceView.as_view(), name = "place")
]