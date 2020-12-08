from rest_framework import serializers
from core.models import Place


class PlaceSerializer(serializers.ModelSerializer):

    class Meta:
        model = Place
        fields = (
            'id',
            'name',
            'city',
            'photo_url',
        )

    
