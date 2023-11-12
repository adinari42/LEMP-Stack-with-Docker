FROM debian:buster

RUN apt update

RUN apt install -y mariadb-server

COPY db-script.sh /usr/local/bin
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /usr/local/bin/db-script.sh

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/db-script.sh"]

CMD ["mysqld"]