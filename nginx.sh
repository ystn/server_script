#! /bin/bash

DOMAIN_NAME="app.example.com"

apt update
apt install nginx -y
nginx -version
systemctl enable nginx
systemctl start nginx

cp ./etc/nginx/sites-available/$DOMAIN_NAME.conf /etc/nginx/sites-available/$DOMAIN_NAME.conf
ln -s /etc/nginx/sites-available/$DOMAIN_NAME.conf /etc/nginx/sites-enabled/

systemctl restart nginx

snap install --classic certbot
certbot --version
certbot --nginx -d $DOMAIN_NAME --agree-tos

ufw allow 80/tcp
ufw allow 443/tcp
ufw status