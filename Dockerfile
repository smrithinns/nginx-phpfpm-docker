FROM ubuntu:18.04
RUN  apt-get update && apt-get -y install  apt-utils locales software-properties-common nginx vim supervisor && apt-add-repository -y ppa:ondrej/php && rm -rf /var/lib/apt/lists/*
COPY nginx.default  /etc/nginx/sites-available/default
COPY supervisord.conf  /etc/supervisor/supervisord.conf 
