FROM debian:buster

RUN apt update

RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php7.3-gd php7.3-mbstring curl wget php-cgi && apt clean

COPY www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir /run/php

COPY wp-script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wp-script.sh

WORKDIR /var/www/html/


EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/wp-script.sh"]
CMD ["/usr/sbin/php-fpm7.3", "-F"]
