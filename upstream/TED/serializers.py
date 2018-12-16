from .models import Person,Department,Visit
from rest_framework import serializers

class PersonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person

class VisitSerializer(serializers.ModelSerializer):
    class Meta:
        model = Visit

class DepartmentSerializer(serializers.ModelSerializer):

    deparT_ID = serializers.SerializerMethodField()
    enable = serializers.SerializerMethodField()

    class Meta:
        model = Department
        fields = ('depnum', 'enable','deparT_ID','name')

    def get_deparT_ID(self, obj):
        return obj.id
    
    def get_enable(self,obj):
        if obj.enable:
            return 1
        else:
            return 0
