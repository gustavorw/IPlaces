from django.contrib import admin
from .models import Place


class PlaceAdmin(admin.ModelAdmin):
    list_display = ['name', 'photo_url', 'city']
    fields = ['name', 'photo_url', 'city']

admin.site.register(Place, PlaceAdmin)