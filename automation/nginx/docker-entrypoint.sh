#!/bin/sh

envsubst "\
  \$ALLOWED_HOSTS \
  \$GHOST_PORT \
  \$HTTPS_PORT\
  \$HTTP_PORT \
  \$MOVIE_HOST \
  \$MOVIE_PORT \
  \$MUSIC_HOST \
  \$MUSIC_PORT \
  \$SSL_CERTIFICATE \
  \$SSL_CERTIFICATE_KEY \
  \$SYNOLOGY_HOST \
  \$SYNOLOGY_INTERNAL_HOST \
  \$SYNOLOGY_PORT \
  \$TORRENT_HOST \
  \$TORRENT_PORT \
  \$TV_HOST \
  \$TV_PORT \
  \$WEB_INTERNAL_HOST \
  " \
  < /etc/nginx/nginx.conf.tmpl > /etc/nginx/nginx.conf

exec nginx 
