#! /bin/bash

DOMAIN_NAME="app.example.com"

snap install --classic certbot
certbot --version
certbot --nginx -d $DOMAIN_NAME --agree-tos