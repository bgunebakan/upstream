# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.conf import settings
from ldap3 import Server, \
    Connection, \
    AUTO_BIND_NO_TLS, \
    SUBTREE, \
    ALL_ATTRIBUTES, ALL, MODIFY_REPLACE


def get_ldap_info(u):
    with Connection(Server(settings.AUTH_LDAP_SERVER_URI, use_ssl=True),
                    auto_bind=AUTO_BIND_NO_TLS,
                    read_only=True,
                    check_names=True,
                    user=settings.AUTH_LDAP_BIND_DN, password=settings.AUTH_LDAP_BIND_PASSWORD) as c:

        c.search(search_base=settings.AUTH_LDAP_USER_SEARCH_BASE,
                 search_filter='(&(uid=' + u + '))',
                 search_scope=SUBTREE,
                 attributes=ALL_ATTRIBUTES,
                 get_operational_attributes=True)

    print(c.response_to_json())
    print(c.result)
    c.unbind()

def modify_user(u):
    # define the server
    s = Server(settings.AUTH_LDAP_SERVER_URI, get_info=ALL)  # define an unsecure LDAP server, requesting info on DSE and schema

# define the connection
    c = Connection(s, user=settings.AUTH_LDAP_BIND_DN, password=settings.AUTH_LDAP_BIND_PASSWORD)
    c.bind()

# perform the Modify operation
    c.modify('uid=btonga'+settings.AUTH_LDAP_USER_SEARCH_BASE,
        {'loginShell': [(MODIFY_REPLACE, ['givenname-1-replaced'])]
        })
    #print(c.response_to_json())
    print(c.result)
    c.unbind()


@login_required
def index(request):
    username = None

    if request.user.is_authenticated():
        username = request.user.username
        #get_ldap_info(username)
        modify_user(username)
    else:
        print "user not logged"


    return render(request, 'ldapconnect/index.html')
