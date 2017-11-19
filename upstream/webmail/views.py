# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
from django_mailbox.models import Message
from django.contrib.auth.decorators import login_required

@login_required
def index(request):
    Messages = Message.objects.all()

    for mail in Messages:
        print "FROM: ",mail.from_header
        print "SUBJECT: ", mail.subject
        print "DATE: ", mail.processed
        print "-----------"

    return render(request, 'webmail/mail_index.html')

@login_required
def compose(request):

    return render(request, 'webmail/compose_mail.html')


@login_required
def read(request):

    return render(request, 'webmail/read_mail.html')
