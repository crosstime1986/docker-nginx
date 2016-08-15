#!/bin/sh
docker run \
--volumes-from app1 --name nginx -p 443:443 -p 80:80 -d \
-v /root/docker-nginx/conf/nginx:/etc/nginx \
-v /data0/web/html:/usr/share/nginx/html:rw \
--link app1:php-app1 \
--add-host app1:127.0.0.1 \
crosstime1986/nginx
