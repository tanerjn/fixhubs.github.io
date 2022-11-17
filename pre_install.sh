#!/bin/bash 

echo 'alias flask_app="export FLASK_APP=app.py"' >> ~/.bashrc	
echo 'alias flask_env="export FLASK_ENV=debug"' >> ~/.bashrc
echo 'alias flask_run="flask run --host=0.0.0.0"' >> ~/.bashrc

pip3 install -r requirements.txt
apt install libmysqlclient-dev
apt install python3-flask
python3 -m pip install --user virtualenv
apt install nginx
apt install tree
apt install silversearcher-ag
apt install libmariadb-dev
apt install python3-pip python-dev
pip3 install uwsgi flask
pip3 install flask-migrate
pip3 install flask_minify
pip3 install mysqlclient
pip3 install mysql-python
pip3 install flask_login
pip3 install flask_wtf
pip install email-validator
pip install mysql-client
sudo snap install core
sudo snap refresh core
sudo apt-get remove certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot/ /usr/bin/certbot

sudo mkdir /var/www/example
sudo touch /var/www/example/app.py
sudo cp nginx/config-uwsgi.ini /var/www/example/
sudo cp nginx/app.py /var/www/example
sudo cp nginx/config-nginx.conf /var/www/example/
sudo cp nginx/default.conf /etc/nginx/conf.d/ 

#certbot --nginx --redirect -d fixhubs.de 


source ~/.bashrc
