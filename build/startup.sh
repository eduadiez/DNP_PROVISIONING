#!/bin/sh

while ! [ -f /usr/share/nginx/html/VPN.mobileconfig ];
do
    echo "Waiting for VPN.mobileconfig generation..."
    sleep 3
done

echo "Running Nginx config test ..."
nginx -t
echo "Starting Nginx ..."
nginx 