from core.models import Place
from rest_framework import generics
from .serializers import PlaceSerializer


class PlaceView(generics.ListCreateAPIView):
    queryset = Place.objects.all()
    serializer_class = PlaceSerializer