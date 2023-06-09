FROM debian:buster

RUN apt-get update && apt-get install -y php7.3 \
    php7.3-fpm \
    php7.3-mysql \
    mariadb-client \
    curl 


RUN mkdir -p /run/php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh script.sh
COPY ./conf/www.conf  /etc/php/7.3/fpm/pool.d/www.conf
RUN chmod +x script.sh

ENTRYPOINT ["sh", "./script.sh"]
CMD ["php-fpm7.3", "-F", "-O"]
