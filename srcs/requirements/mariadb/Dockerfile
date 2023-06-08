FROM debian:buster

RUN apt-get update && \
   apt-get install mariadb-server -y

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD

COPY ./tools/script.sh ./script.sh
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x script.sh
RUN ./script.sh
CMD ["mysqld"] 
