#!/bin/sh

envsubst "\
  \$ALLOWED_HOSTS \
  \$COUCHPOTATO_HOST \
  \$COUCHPOTATO_PORT \
  \$DELUGE_HOST \
  \$DELUGE_PORT \
  \$GHOST_PORT \
  \$HEADPHONES_HOST \
  \$HEADPHONES_PORT \
  \$HTTPS_PORT\
  \$HTTP_PORT \
  \$SONARR_HOST \
  \$SONARR_PORT \
  \$SSL_CERTIFICATE \
  \$SSL_CERTIFICATE_KEY \
  \$SYNOLOGY_HOST \
  \$SYNOLOGY_INTERNAL_HOST \
  \$SYNOLOGY_PORT \
  \$WEB_INTERNAL_HOST \
  " \
  < /etc/nginx/nginx.conf.tmpl > /etc/nginx/nginx.conf

exec nginx 
