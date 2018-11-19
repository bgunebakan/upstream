from django.contrib.auth.models import User, Group
from rest_framework import serializers
from personnel.models import Personnel,Personnel_type,Personnel_file,Annual_leave

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('id','username', 'email','password','first_name','last_name')
        extra_kwargs = {'password': {'write_only': True, 'required': True}}

    def create(self,validated_data):
        user = User.objects.create_user(**validated_data)
        return user

class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ('url', 'name')

class PersonnelSerializer(serializers.ModelSerializer):
    class Meta:
        model = Personnel
        fields = ('user','personnel_type','name', 'surname','birth_date',
        'country','nat_id','gender','department','title','job','phone_number1',
        'phone_number2','email','address','marital_status','drive_licence',
        'health_status','notes','cv','profile_picture',
        'user_file','extra_file1','extra_file2','extra_file3','created_date')

class MiniPersonnelSerializer(serializers.ModelSerializer):
    class Meta:
        model = Personnel
        fields = ('id','name','surname')

class Personnel_typeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Personnel_type
        fields = ('id','name','slug', 'icon','color','total','created_date')

class Personnel_fileSerializer(serializers.ModelSerializer):
    class Meta:
        model = Personnel_file
        fields = ('id','name','slug','file','personnel','created_date')

class Annual_leaveSerializer(serializers.ModelSerializer):
    class Meta:
        model = Annual_leave
        fields = ('id','user','start_date','end_date','notes','approved')
