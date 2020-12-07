from django.db import models


class Place(models.Model):

    name = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    photo_url = models.URLField()

    def __str__(self):
        return self.name



