from .models import Person, Department, Visit
from rest_framework import serializers
from django.contrib.auth.models import User
from personnel.models import Personnel
from portunes.models import Identifier
from django.db.models import Q

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
    #department = SubDepartmentSerializer()
    persoN_ID = serializers.SerializerMethodField()
    enable = serializers.SerializerMethodField()

    class Meta:
        model = Person
        fields = (
        'persoN_ID',
        'enable', 'personnum', 'firstname', 'surname', 'title',
        'titleafter', 'birthdate','nuM_PER','IDCARD')

    def get_persoN_ID(self, obj):
        #return None
        return obj.id

    def get_enable(self, obj):
        if obj.enable:
            return 1
        else:
            return 0

class UserPersonSerializer(serializers.ModelSerializer):

    persoN_ID = serializers.SerializerMethodField()
    enable = serializers.SerializerMethodField()
    personnum = serializers.SerializerMethodField()
    firstname = serializers.SerializerMethodField()
    surname = serializers.SerializerMethodField()
    title = serializers.SerializerMethodField()
    #titleafter = serializers.SerializerMethodField()
    birthdate = serializers.SerializerMethodField()
    nuM_PER = serializers.SerializerMethodField()
    IDCARD = serializers.SerializerMethodField()
    allow = serializers.SerializerMethodField()
    department = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = (
        'persoN_ID',
        'enable', 'personnum', 'firstname', 'surname', 'title',
        'birthdate','nuM_PER','IDCARD','allow','department')

    def get_persoN_ID(self, obj):
        return self.context.get("person_id")

    def get_enable(self, obj):
        identifier = Identifier.objects.filter((Q(identifier_type=1) | Q(identifier_type=2)) & Q(dosimeter_access=True) & Q(user=obj))

        if identifier:
            print(identifier)
            return 1
        else:
            return 0

    def get_personnum(self, obj):
        personnel = Personnel.objects.get(user=obj)
        return personnel.nat_id

    def get_firstname(self, obj):
        return obj.first_name[0 : 15]

    def get_surname(self, obj):
        return obj.last_name[0 : 15]

    def get_title(self, obj):
        try:
            personnel = Personnel.objects.get(user=obj)
            return personnel.title[0 : 15]
        except TypeError as e:
            return None

    def get_titleafter(self, obj):
        personnel = Personnel.objects.get(user=obj)
        return personnel.job

    def get_birthdate(self, obj):
        personnel = Personnel.objects.get(user=obj)
        try:
            return personnel.birth_date.strftime("%Y-%m-%dT%H:%M:%S")
        except:
            return None

    def get_nuM_PER(self, obj):
        return obj.id

    def get_allow(self, obj):
        return "2021-01-01T00:00:00"

    def get_IDCARD(self, obj):
        identifier = Identifier.objects.filter(~Q(identifier_type=3) & Q(user=obj) )
        for id in identifier:
            return id.key

    def get_department(self, obj):
        return {"rel":"1","href":"https://192.168.2.150:8088/seod_mp/rest/SEOD_DEPARTMENT/1","method":"GET"}

class VisitSerializer(serializers.ModelSerializer):
    class Meta:
        model = Visit
