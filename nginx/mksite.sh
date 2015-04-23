#!/bin/bash

cat > /etc/nginx/conf.d/mysite.conf <<EOF
server {
    listen 80;
    server_name ${VIRTUALHOST};
    error_log /var/log/nginx/error.log;
    access_log /var/log/nginx/access.log;

    location /static {
        alias /static/;
        autoindex on;
    }

    location / {
         proxy_pass http://app:8000;
         proxy_set_header X-Forwarded-Host \$server_name;
         proxy_set_header X-Real-IP \$remote_addr;
         add_header P3P 'CP="ALL DSP COR PSAa PSDa OUR NOR ONL UNI COM NAV"';
    }
}
EOF
