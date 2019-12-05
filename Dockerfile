FROM ubuntu:18.04
RUN  apt-get update && apt-get -y install  apt-utils locales software-properties-common nginx vim supervisor tzdata && add-apt-repository ppa:ondrej/php && apt-get update
RUN ln -sf  /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
RUN apt-get install -y php7.2-fpm
RUN mkdir -p /var/run/php
COPY nginx.default  /etc/nginx/sites-available/default
COPY supervisord.conf  /etc/supervisor/supervisord.conf 
