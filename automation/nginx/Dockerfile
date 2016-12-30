FROM nginx:alpine

COPY nginx.conf.tmpl /etc/nginx/

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
