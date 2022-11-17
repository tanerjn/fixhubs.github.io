#!/bin/bash 

echo 'alias flask_app="export FLASK_APP=app.py"' >> ~/.bashrc	
echo 'alias flask_env="export FLASK_ENV=debug"' >> ~/.bashrc

sudo apt install mysql-server
sudo systemctl start mysql.service
sudo apt install mariadb-server
sudo mysql_secure_installation
apt install libmysqlclient-dev
apt install python3-flask
sudo apt-get install python-pygments

/etc/needrestart/restart.d/dbus.service
systemctl restart systemd-logind.service
systemctl restart unattended-upgrades.service

apt install nginx
apt install tree
apt install silversearcher-ag
apt install libmariadb-dev
apt install python3-pip python-dev
apt-get install python3-pygments 

pip3 install uwsgi flask
pip3 install flask-migrate
pip3 install flask_minify
pip3 install flask_login
pip3 install flask_wtf
pip install email-validator
pip install mysql-client
pip3 install -r requirements.txt

sudo mkdir /var/www/example
touch /var/www/example.app.py

echo "alias ccat='pygmentize -g -O full,style=friendly,linenos=1'" >> ~/.bashrc
echo "from flask import Flask
app = Flask(__name__)

@app.route("/")
def index():
return "Hello World!"

if __name__ == "__main__":
app.run(host="0.0.0.0")" >> /var/www/example.py

touch /var/www/example/config-uwsgi.ini

echo "[uwsgi]
app = main
module = %(app)
callable = app

socket = /var/www/example/example.sock
chdir = /var/www/example

chmod-socket = 666
processes = 4
die-on-term = true" >> /var/www/example/config-uwsgi.ini


sh ./pre_ssl.sh

source ~/.bashrc
