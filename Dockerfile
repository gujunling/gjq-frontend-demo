FROM nginx

WORKDIR /usr/share/nginx/html

RUN  rm -rf *

ADD ./dist .

WORKDIR /etc/nginx

RUN rm -rf nginx.conf

ADD nginx.conf .

EXPOSE 80
