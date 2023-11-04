FROM debian:buster

RUN apt update

RUN apt install -y nginx openssl


RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt -subj "/CN=shrimpception.com"

COPY nginx.conf /etc/nginx/sites-enabled/
COPY nginx.conf /etc/nginx/config.d

EXPOSE 443

CMD ["nginx","-g","daemon off;"]
