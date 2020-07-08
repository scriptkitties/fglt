FROM registry.gitlab.com/tyil/docker-http-static:latest

COPY _site /var/www
COPY .docker/lighttpd.conf /etc/lighttpd/custom.d/lighttpd.conf
