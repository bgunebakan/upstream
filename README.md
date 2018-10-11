# Upstream
**UPSTREAM All in One Manangement Software**         

UPstream is new way of collaborative working.

Developed by: Creworker 2017-2018
Last Realease: 0.2 Beta


## Depencies

**Debian like systems:**

sudo apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev libkrb5-dev

## Crontab Settings
# m h  dom mon dow   command
* * * * * /opt/upstream/env/bin/python /opt/upstream/repo/upstream/manage.py ldap_sync_users > /dev/null 2>&1
*/5 * * * * /opt/upstream/env/bin/python /opt/upstream/repo/upstream/manage.py get_logs >/dev/null 2>&1
0 * * * * /opt/upstream/env/bin/python /opt/upstream/repo/upstream/manage.py settime >/dev/null 2>&1


## Changelogs

### Version 0.4 Changelogs

* Annual leaves calendar view added
* Item QR code print added
*
*
*

### Version 0.3 Changelogs

* Traveller expenses added
*
*
*
*

### Version 0.2 Changelogs

* Procurement module added

### Version 0.1 Changelogs

* Personnel Management, Project, Portunes,Inventory module added



## Authors

* **Bilal Tonga** - [Creworker](https://creworker.com)
