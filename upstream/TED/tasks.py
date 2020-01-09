from threading import Thread,Lock
from datetime import datetime
from portunes.models import Identifier,DoorGroup,Permission
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
            try:
                print udp_data
                data = udp_data.split(";")
                dt_object = datetime.fromtimestamp(int(data[0]))
                iden =  Identifier.objects.get(key=int(data[2], 16))

                identifiers = Identifier.objects.filter(Q(user=iden.user)& ~Q(identifier_type=3))
                if int(data[5]) == 0:
                    enter = True
                else:
                    enter = False

                print("enter:" + str(enter))
                print("timestamp:" + str(dt_object))
                print("terminal_id:" + str(data[4]))
                print("card:" + str(iden))
                door_groups = DoorGroup.objects.filter(group_type=5)
                exit_door_groups = DoorGroup.objects.filter(group_type=6)

                if enter:
                    print("Entering..........")
                    for door_group in door_groups:
                        for door in door_group.doors.filter(doorgroup=door_group.id):
                            print (door)
                            for identifier in identifiers:
                                Permission.objects.get_or_create(identifier=identifier,door=door)

                    # REMOVE PERMISSIONS
                    for door_group in exit_door_groups:
                        for door in door_group.doors.filter(doorgroup=door_group.id):
                            for identifier in identifiers:
                                permissions = Permission.objects.filter(identifier=identifier,door=door)
                                for permission in permissions:
                                    permission.delete()

                else:
                    print("Leaving..........")
                    for door_group in door_groups:
                        for door in door_group.doors.filter(doorgroup=door_group.id):
                            print (door)
                            for identifier in identifiers:
                                permissions = Permission.objects.filter(identifier=identifier,door=door)
                                for permission in permissions:
                                    permission.delete()

                    for door_group in exit_door_groups:
                        for door in door_group.doors.filter(doorgroup=door_group.id):
                            print (door)
                            for identifier in identifiers:
                                Permission.objects.get_or_create(identifier=identifier,door=door)


            except ValueError as e:
                print(e)
            except Identifier.DoesNotExist as e:
                print(e)
