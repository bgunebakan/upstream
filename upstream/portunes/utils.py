# -*- coding: utf-8 -*-

import socket
import errno
import sys
import time


def send_controller(Command,ControllerIp, args):

    ControllerPort = 8000
    MESSAGE = Command + "," + args + "\n"
    BUFFER_SIZE = sys.getsizeof(MESSAGE)

    try:
    #if True:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        print(s.getsockname())
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
