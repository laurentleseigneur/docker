FROM mysql:5.5.49

MAINTAINER Laurent Leseigneur <laurent.leseigneur@bonitasoft.com>

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=bonita
ENV MYSQL_USER=bonita
ENV MYSQL_PASSWORD=bpm

# set docker.cnf config
COPY docker.cnf /etc/mysql/conf.d
