FROM alpine:3.3
MAINTAINER Ladislav Gazo <gazo@seges.sk>

RUN apk add --update apache2 apache2-utils apache2-webdav apache2-ldap mod_dav_svn subversion && \
    rm /var/cache/apk/* && \
    mkdir /run/apache2

ADD apache2/httpd.conf /etc/apache2/httpd.conf

EXPOSE 80 443

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]

