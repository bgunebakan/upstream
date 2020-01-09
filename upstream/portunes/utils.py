# -*- coding: utf-8 -*-

import socket
import errno
import sys
import time
import models

def release_identifier(identifiers):

    for identifier in identifiers:
        permissions = models.Permission.objects.filter(identifier=identifier)
        if permissions:
            for permission in permissions:
                permission.delete()
                if permission.id != None:
                    print(unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " CANNOT deleted from Controller!")
                else:
                    print(unicode(permission.identifier.user) + " - " + unicode(permission.door.entrance) + " deleted from Controller.")

        identifier.user = None
        identifier.save()
    return True

def take_vehicle_identifier(identifiers,user):
    print("take new vehicle identifier")
    release_vehicle_identifier(identifiers)

    door_groups = models.DoorGroup.objects.filter(group_type=7)
    #print(door_groups)

    for identifier in identifiers:
        identifier.user = user
        identifier.save()
        for door_group in door_groups:
            for door in door_group.doors.filter(doorgroup=door_group.id):
                permission, created = models.Permission.objects.update_or_create(identifier=identifier,door=door)

def release_vehicle_identifier(identifiers):
    print("release old vehicle identifiers")
    permissions = models.Permission.objects.filter(identifier__in=identifiers)
    if permissions:
        for permission in permissions:
            permission.delete()
    for identifier in identifiers:
        identifier.user = None
        identifier.save()

def clear_identifier_permissions(identifier):
    permissions = models.Permission.objects.filter(identifier__in=identifier)
    if permissions:
        for permission in permissions:
            permission.delete()

def send_controller(Command,ControllerIp, args):

    ControllerPort = 8000
    MESSAGE = Command + "," + args + "\n"
    BUFFER_SIZE = sys.getsizeof(MESSAGE)

    try:
    #if True:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        #print(s.getsockname())
        print(ControllerIp)
        s.connect((ControllerIp, ControllerPort))
        #s.settimeout(1.0)
        print(MESSAGE)
        s.send(MESSAGE)
        data = ''
        con = True

        while con:
            #s.settimeout(3.0)
            character = s.recv(1)
            #print character

            if "\n" in character or ';' in character:
                con = False
            else:
	            data += character


        #print(data)
        if "OK" in data :
            return True
        elif Command is 'L':
            return data
        elif "ERR" in data:
            return False
        else:
            return False

        s.close()

    except socket.error as exc:
        print("Caught exception socket.error : %s" % exc)
        return False

def setTime(controller):

    print(controller.ip_address)
    #print timezone.localtime(timezone.now())
    print(time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime())) #"%a %b %d %H:%M:%S %Z %Y"
    timenow = time.strftime("%d.%m.%Y,%H:%M:%S", time.localtime())
    response = send_controller('T',controller.ip_address,unicode(timenow))
    print(response)

    if response:
        controller.health = True
        print(controller.name,' saati guncellendi.')
    else:
        controller.health = False

    controller.save()
    return(response)
