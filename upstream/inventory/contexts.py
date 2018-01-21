from django.core.urlresolvers import resolve

def app_name(request):
    return {'app_name': resolve(request.path).app_name}
