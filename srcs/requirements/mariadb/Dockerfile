FROM debian:buster

RUN apt update

RUN apt install -y mariadb-server mariadb-client

COPY db-script.sh /usr/local/bin
RUN chmod +x /usr/local/bin/db-script.sh
COPY db.sql /tmp/
RUN chmod +x /tmp/db.sql 

RUN mkdir /run/mysqld

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/db-script.sh"]

CMD ["mysqld", "--user=mysql", "--bind-address=0.0.0.0"]