#!/bin/sh
docker run -d --name nginx -p 443:443 -p 80:80  \
-v /root/docker-nginx/conf/nginx:/etc/nginx \
-v /data0/web/html:/usr/share/nginx/html:rw \
crosstime1986/nginx 
