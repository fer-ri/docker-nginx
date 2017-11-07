FROM nginx:1.12-alpine

MAINTAINER Ferri Sutanto <greenhouseprod@gmail.com>

RUN set -x; \
    \
    rm  /etc/nginx/conf.d/default.conf; \
    mkdir -p /home/nginx/domains/default/{public_html,logs};

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/conf.d/gzip.conf /etc/nginx/conf.d/gzip.conf
COPY files/sites-enabled/default /etc/nginx/sites-enabled/default
COPY files/public_html /home/nginx/domains/default/public_html