from django.conf.urls import url, include
from rest_framework import routers
from api import personnel_views

router = routers.DefaultRouter()
router.register(r'auth/users', personnel_views.UserViewSet)
router.register(r'auth/groups', personnel_views.GroupViewSet)
router.register(r'personnel/personnels', personnel_views.PersonnelViewSet)
router.register(r'personnel/personnel_types', personnel_views.Personnel_typeViewSet)
router.register(r'personnel/personnel_file', personnel_views.Personnel_fileViewSet)
router.register(r'personnel/annual_leave', personnel_views.Annual_leaveViewSet)

# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^authenticate/',personnel_views.CustomObtainAuthToken.as_view()),
]
