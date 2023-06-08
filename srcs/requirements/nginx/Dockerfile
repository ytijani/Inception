FROM debian:buster

RUN apt-get update && apt-get install -y nginx \
    vim \
    openssl

RUN mkdir /etc/nginx/ssl/

COPY tools/script.sh script.sh

RUN chmod +x script.sh

RUN ./script.sh

COPY conf/default /etc/nginx/sites-enabled/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

