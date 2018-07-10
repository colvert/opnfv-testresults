#!/bin/bash
cp -r display /usr/share/nginx/html

# nginx config
cp /home/opnfv/releng-testresults/reporting/docker/nginx.conf /etc/nginx/conf.d/
echo "daemon off;" >> /etc/nginx/nginx.conf

