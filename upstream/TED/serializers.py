from .models import Person,Department,Visit
from rest_framework import serializers

class PersonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person

class VisitSerializer(serializers.ModelSerializer):
    class Meta:
        model = Visit

class DepartmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Department
