from .models import Person, Department, Visit
from rest_framework import serializers


class DepartmentSerializer(serializers.ModelSerializer):
    deparT_ID = serializers.SerializerMethodField()
    enable = serializers.SerializerMethodField()

    class Meta:
        model = Department
        fields = ('depnum', 'enable', 'deparT_ID', 'name')

    def get_deparT_ID(self, obj):
        return obj.id

    def get_enable(self, obj):
        if obj.enable:
            return 1
        else:
            return 0


class SubDepartmentSerializer(serializers.ModelSerializer):
    rel = serializers.SerializerMethodField()

    class Meta:
        model = Department
        fields = ('rel',)

    def get_rel(self, obj):
        return obj.id


class PersonSerializer(serializers.ModelSerializer):
    department = SubDepartmentSerializer()
    persoN_ID = serializers.SerializerMethodField()
    enable = serializers.SerializerMethodField()

    class Meta:
        model = Person
        fields = (
        'persoN_ID', 'enable', 'personnum', 'firstname', 'surname', 'title', 'titleafter', 'birthdate', 'department')

    def get_persoN_ID(self, obj):
        return obj.id

    def get_enable(self, obj):
        if obj.enable:
            return 1
        else:
            return 0


class VisitSerializer(serializers.ModelSerializer):
    class Meta:
        model = Visit
