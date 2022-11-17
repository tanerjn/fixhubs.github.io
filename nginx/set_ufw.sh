#!/bin/bash

sudo mkdir /etc/nginx/sites-enabled
sudo ln -s /etc/nginx/sites-available/fixhub /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
sudo ufw allow 5000
sudo ufw allow 'Nginx Full'
ufw app list
ufw allow 80,443/tcp
vi /etc/ufw/applications.d/nginx.ini
ufw app update nginx
ufw app info 'Nginx HTTP'
ufw allow 'Nginx HTTP'
#sudo resolvectl flush-caches
#sudo journalctl -r -u systemd-resolved


nohup uwsgi /var/www/example/config-uwsgini &
