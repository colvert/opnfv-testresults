#!/bin/bash
cp -r display /usr/share/nginx/html


# nginx config
cp /home/opnfv/releng-testresults/reporting/docker/nginx.conf /etc/nginx/conf.d/
echo "daemon off;" >> /etc/nginx/nginx.conf

# supervisor config
cp /home/opnfv/releng-testresults/reporting/docker/supervisor.conf /etc/supervisor/conf.d/

# Manage Angular front end
cd pages && /bin/bash angular.sh

