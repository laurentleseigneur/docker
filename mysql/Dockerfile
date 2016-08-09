FROM mysql:5.5.49

MAINTAINER Laurent Leseigneur <laurent.leseigneur@bonitasoft.com>

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=bonita
ENV MYSQL_USER=bonita
ENV MYSQL_PASSWORD=bpm

# need to increase the packet size set by default to 1M
RUN echo "[mysqld]\nmax_allowed_packet=20M\ncharacter-set-server=utf8\ncollation-server=utf8_general_ci" > /etc/mysql/conf.d/docker.cnf
