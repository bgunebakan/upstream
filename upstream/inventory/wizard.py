from rest_framework import serializers
from data_wizard import registry
from .models import FileModel

class TimeSeriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = FileModel
        fields = '__all__'

registry.register("Time Series", TimeSeriesSerializer)
