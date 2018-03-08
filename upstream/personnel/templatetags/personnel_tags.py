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
        logentries = LogEntry.objects.all().order_by('-timestamp')[:10:1]
    except ObjectDoesNotExist:
        return "<b>Log Bulunamadı!</b>"

    html = ""
    for log in logentries:
        try:
            changed_obj = Personnel.objects.get(id=log.object_id)
            user = User.objects.get(id=log.actor.id)
            personnel = Personnel.objects.get(user=user)
        except ObjectDoesNotExist:
            pass
        html = html + '<div class="icon">'
        if log.action == 0:
            html = html + '<i class="fa fa-plus-square"> '
        elif log.action == 1:
            html = html + '<i class="fa fa-exchange"> '
        elif log.action == 2:
            html = html + '<i class="fa fa-window-close"> '
        html = html + '<a href="/personnel/personnel/' + str(personnel.id) + '">' + log.actor.first_name +" "+ log.actor.last_name+ "</a></i></div>"
        html = html + ' <b>' + changed_obj.name.decode('utf-8') + ' ' + changed_obj.surname.decode('utf-8') + '</b> kullanıcısını düzenledi.'.decode('utf-8')
        html = html + ' <br>' + unicode(log.timestamp.strftime("%Y-%m-%d %H:%M:%S"))
    return html
