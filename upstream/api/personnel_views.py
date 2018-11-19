from django.shortcuts import render
from django.contrib.auth.models import User, Group
from rest_framework import viewsets,status
from .personnel_serializers import UserSerializer, GroupSerializer,PersonnelSerializer,Personnel_typeSerializer,Personnel_fileSerializer,Annual_leaveSerializer
from rest_framework.authentication import TokenAuthentication,SessionAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from personnel.models import Personnel,Personnel_type,Personnel_file,Annual_leave
from rest_framework.decorators import list_route

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer

class PersonnelViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Personnel.objects.all()
    serializer_class = PersonnelSerializer
    authentication_classes = (TokenAuthentication,SessionAuthentication)
    permission_classes = (IsAuthenticated,)

    @list_route(methods=['post'])
    def get_profile(self,request):
        if 'user' in request.data:
            try:

                personnel = Personnel.objects.get(id=request.data['user'])
                #print(request.data['user'],personnel)
                serializer = PersonnelSerializer(personnel,many=False)
                #print(request.data['user'],personnel)
                response = {"message":"Personnel found","result":serializer.data}
                return Response(response,status=status.HTTP_200_OK)
            except:
                Personnel.objects.create(user=request.data['user'])
                serializer = PersonnelSerializer(personnel,many=False)
                response = {"message":"Personnel created","result":serializer.data}
                return Response(response,status=status.HTTP_200_OK)
        else:
            response = {"messege":"You need to pass all params!"}
            return Response(response,status=status.HTTP_400_BAD_REQUEST)

class Personnel_typeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Personnel_type.objects.all()
    serializer_class = Personnel_typeSerializer
    authentication_classes = (TokenAuthentication,SessionAuthentication)
    permission_classes = (IsAuthenticated,)

class Personnel_fileViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Personnel_file.objects.all()
    serializer_class = Personnel_fileSerializer
    authentication_classes = (TokenAuthentication,SessionAuthentication)
    permission_classes = (IsAuthenticated,)

class Annual_leaveViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Annual_leave.objects.all()
    serializer_class = Annual_leaveSerializer
    authentication_classes = (TokenAuthentication,SessionAuthentication)
    permission_classes = (IsAuthenticated,)

class CustomObtainAuthToken(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        response = super(CustomObtainAuthToken,self).post(request, *args, **kwargs)
        token = Token.objects.get(key=response.data['token'])
        user = User.objects.get(id=token.user_id)
        serializer = UserSerializer(user, many=False)
        return Response({'token':token.key,'user':serializer.data})
