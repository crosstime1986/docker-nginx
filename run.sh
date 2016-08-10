#!/bin/sh
docker run \
--volumes-from php55-fpm --name nginx -p 443:443 -p 80:80 -d \
-v /root/docker-nginx/conf/nginx:/etc/nginx \
-v /data0/web/html:/usr/share/nginx/html:rw \
--link php55-fpm:php553-fpm \
crosstime1986/nginx
