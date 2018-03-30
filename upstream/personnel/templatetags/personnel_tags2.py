# -*- coding: utf-8 -*-

from personnel.models import Personnel
from django import template
from django.core.exceptions import ObjectDoesNotExist
from auditlog.models import LogEntry
from django.contrib.auth.models import User

register = template.Library()


@register.simple_tag
def get_personnel(request):
    try:
        personnel = Personnel.objects.get(user=request.user)
    except ObjectDoesNotExist:
        return ""
    return personnel

@register.simple_tag
def select_personnel(id):
    try:
        personnel = Personnel.objects.get(id=id)
    except ObjectDoesNotExist:
        return ""
    return personnel

@register.simple_tag
def action_logs(count):
    try:
        logentries = LogEntry.objects.all().order_by('-timestamp')[:count:1]
    except ObjectDoesNotExist:
        return "<b>Log Bulunamadı!</b>"
	print "log bulunamadı"
    html = ""
    for log in logentries:
        try:
            changed_obj = Personnel.objects.get(id=log.object_id)
            user = User.objects.get(id=log.actor.id)
            personnel = Personnel.objects.get(user=user)
            actor_personnel = Personnel.objects.get(user=log.actor)
        except ObjectDoesNotExist:
            #return "<b>Log Bulunamadı!</b>"
            pass


        html = html + '''<div class="row">
                        <div class="col-sm-2">
                        <div class="thumbnail">
                        <img class="img-responsive user-photo" src="/media/'''+unicode(actor_personnel.profile_picture)+ '''">
                        </div><!-- /thumbnail -->
                        </div><!-- /col-sm-1 -->

                        <div class="col-sm-10">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                        <strong>'''+unicode(actor_personnel)+ '''</strong> <span class="text-muted">'''+unicode(log.timestamp.strftime("%d.%m.%Y %H:%M"))+'''</span>
                        </div>
                        <div class="panel-body">
                        <a href="/personnel/personnel/'''+unicode(changed_obj.id)+'''">'''+unicode(changed_obj)+'''</a> has updated.
                        </div><!-- /panel-body -->
                        </div><!-- /panel panel-default -->
                        </div><!-- /col-sm-5 -->
                        </div><!-- /row -->'''
        #if log.action == 0:
        #    html = html + '<i class="fa fa-plus-square"> '
        #elif log.action == 1:
        #    html = html + '<i class="fa fa-exchange"> '
        #elif log.action == 2:
        #    html = html + '<i class="fa fa-window-close"> '
        #html = html + '<div class="media-body"><h4 class="media-heading">' + unicode(actor_personnel) + '</h4><p>Lorem ipsum...</p></div></div>'
        #html = html + '<a href="/personnel/personnel/' + str(personnel.id) + '">' + unicode(log.actor.first_name) +" "+ log.actor.last_name.decode('utf-8') + "</a></i></div>"
        #html = html + ' <b>' + changed_obj.name + ' ' + changed_obj.surname + '</b> kullanıcısını düzenledi.'.decode('utf-8')
        #html = html + ' <br>' + unicode(log.timestamp.strftime("%Y-%m-%d %H:%M:%S"))
    return html #.decode('utf-8')

@register.simple_tag
def last_personnels(count):
    try:
        personnels = Personnel.objects.all().order_by('-created_date')[:count:1]
    except ObjectDoesNotExist:
        return "Personnel bulunamadı!"
    return personnels
