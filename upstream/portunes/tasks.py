from threading import Thread,Lock
from datetime import datetime
from .models import Identifier,DoorGroup,Permission
from django.db.models import Q

import socket

class tedThread (Thread):
    def __init__(self, name, args=(), kwargs=None):
        Thread.__init__(self, args=(), kwargs=None)

        self.name = name
        self.host = "0.0.0.0"
        self.port = 11777
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

        self.sock.bind((self.host, self.port))

    def run(self):
        while True:
            (udp_data, addr) = self.sock.recvfrom(128*1024)
            #print(udp_data)
            try:
                print udp_data
                data = udp_data.split(";")
                dt_object = datetime.fromtimestamp(int(data[0]))
                iden =  Identifier.objects.get(key=data[2])
                #user = identifier.user
                identifiers = Identifier.objects.filter(user=iden.user)
                if int(data[5]) == 0:
                    enter = True
                else:
                    enter = False

                print("enter:" + str(enter))
                print("timestamp:" + str(dt_object))
                print("terminal_id:" + str(data[4]))
                print("card:" + str(iden))
                door_groups = DoorGroup.objects.filter(group_type=5)

                if enter:
                    print("Entering..........")
                    #print(door_groups.doors.all)
                    for door_group in door_groups:
                        for door in door_group.doors.filter(doorgroup=door_group.id):
                            print (door)
                            for identifier in identifiers:
                                Permission.objects.get_or_create(identifier=identifier,door=door)
                else:
                    print("Leaving..........")
                    for door_group in door_groups:
                        for door in door_group.doors.filter(doorgroup=door_group.id):
                            print (door)
                            for identifier in identifiers:
                                permissions = Permission.objects.filter(identifier=identifier,door=door)
                                for permission in permissions:
                                    #print(permission)
                                    permission.delete()
                    #for door in door_group.doors.all():
                    #    Permission.objects.filter(identifier=identifier,door=door).delete()

                #print("person_id:" + str(data[1]))


                #print("visitor:" + str(data[3]))
                #print("terminal_id:" + str(data[4]))

            except ValueError as e:
                print(e)
            except Identifier.DoesNotExist as e:
                print(e)
            #print(data)



# @task(name="ted listener")
# def tedlistener():
#
#     tedlistenerThread = tedThread('TED Listener Thread')
#     tedlistenerThread.daemon = True
#     print("Starting Thread: " + str(tedlistenerThread.name))
#     tedlistenerThread.start()
