#!/usr/bin/env bash

openssl req -newkey rsa:2048 -nodes -keyout ./zbx_env/etc/ssl/nginx/ssl.key -x509 -days 365 -out ./zbx_env/etc/ssl/nginx/ssl.crt && openssl dhparam -out ./zbx_env/etc/ssl/nginx/dhparam.pem 2048

chmod -w ./zbx_env/etc/ssl/nginx/*
chmod g+r zbx_env/etc/ssl/nginx/ssl.key
