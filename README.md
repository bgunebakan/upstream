# Upstream
**UPSTREAM All in One Management Software**         

UPstream is new way of collaborative working.

Developed by: Creworker 2017-2018
Last Realease: 0.2 Beta


## Depencies

**Debian like systems:**
```
sudo apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev libkrb5-dev
apt install mysql-server python-mysql.connector
apt install default-mysql-client
apt install default-libmysqlclient-dev
```
## Apache2 Settings
```
<VirtualHost *:80>
    ServerAdmin bilaltonga@gmail.com
    ServerName flow.creworker.com
    ServerAlias flow.creworker.com

    #WSGIDaemonProcess Upstream python-path=/var/www/upstream:/upstream/env/lib/python2.7/site-packages
    #WSGIProcessGroup Upstream
    WSGIScriptAlias / /var/www/upstream/upstream/wsgi.py

    Alias /robots.txt /upstream/static/robots.txt
    Alias /favicon.ico /upstream/static/favicon.ico

    Alias /static/ /upstream/static/
    <Directory "/static/">
        Require all granted
    </Directory>

    Alias /media/ /upstream/media/
    <Directory "/media/">
        Require all granted
    </Directory>

    <Directory /var/www/upstream/upstream>
        <Files wsgi.py>
            Require all granted
        </Files>
    </Directory>

    AddDefaultCharset utf-8
    ErrorLog /var/log/upstream/error.log
    CustomLog /var/log/upstream/access.log combined

    RewriteEngine on
    RewriteCond %{SERVER_NAME} =flow.creworker.com
    RewriteRule ^ https://%{SERVER_NAME}%{REQUEST_URI} [END,NE,R=permanent]
</VirtualHost>
```
```
<IfModule mod_ssl.c>
<VirtualHost *:443>
    ServerAdmin bilaltonga@gmail.com
    ServerName flow.creworker.com
    ServerAlias flow.creworker.com

    WSGIDaemonProcess Upstream python-path=/var/www/upstream:/opt/upstream/env/lib/python2.7/site-packages
    WSGIProcessGroup Upstream
    WSGIScriptAlias / /var/www/upstream/upstream/wsgi.py

    Alias /static/ /var/www/upstream/static/
    <Location "/static/">
        Require all granted
    </Location>

    <Directory /var/www/upstream/upstream>
        <Files wsgi.py>
            Require all granted
        </Files>
    </Directory>

    AddDefaultCharset utf-8
    ErrorLog /var/log/upstream/error.log
    CustomLog /var/log/upstream/access.log combined

SSLCertificateFile /etc/fullchain.pem
SSLCertificateKeyFile /etc/privkey.pem
Include /etc/options-ssl-apache.conf
</VirtualHost>
</IfModule>
```

## Crontab Settings
```
# m h  dom mon dow   command
* * * * * /opt/upstream/env/bin/python /opt/upstream/repo/upstream/manage.py ldap_sync_users > /dev/null 2>&1
*/5 * * * * /opt/upstream/env/bin/python /opt/upstream/repo/upstream/manage.py get_logs >/dev/null 2>&1
0 * * * * /opt/upstream/env/bin/python /opt/upstream/repo/upstream/manage.py settime >/dev/null 2>&1
```
## MYsql database create
```
ALTER DATABASE `databasename` CHARACTER SET utf8;
```
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
