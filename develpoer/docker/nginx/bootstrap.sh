#!/bin/sh
ln -f -s /project/config/nginx/nginx.$ENV.conf /etc/nginx/nginx.conf
nginx -g 'daemon off;'
