# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

from django.shortcuts import render_to_response
from django.template import RequestContext


def handler400(request, *args, **argv):
    response = render_to_response('errors/400.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 400
    return response


def handler403(request, *args, **argv):
    response = render_to_response('errors/403.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 403
    return response

def handler404(request, *args, **argv):
    response = render_to_response('errors/404.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 404
    return response

def handler500(request, *args, **argv):
    response = render_to_response('errors/500.html', {})
    response.status_code = 500
    return response

def index(request):


    return render(request, 'homepage/index.html')
