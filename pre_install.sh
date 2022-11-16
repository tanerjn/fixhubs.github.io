#!/bin/bash 

apt install python3-flask

echo 'alias flask_app="export FLASK_APP=app.py"' >> ~/.bashrc	
echo 'alias flask_env="export FLASK_ENV=debug"' >> ~/.bashrc


sudo apt install mysql-server
sudo systemctl start mysql.service
sudo apt install mariadb-server
sudo mysql_secure_installation
apt install libmysqlclient-dev

/etc/needrestart/restart.d/dbus.service
systemctl restart systemd-logind.service
systemctl restart unattended-upgrades.service

apt install tree
apt install silversearcher-ag
apt install libmariadb-dev

pip3 install flask-migrate
pip3 install flask_minify
pip3 install flask_login
pip3 install flask_wtf

pip3 install -r requirements.txt

source ~/.bashrc
