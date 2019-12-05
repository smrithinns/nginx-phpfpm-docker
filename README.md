# nginx-phpfpm-docker

Docker File to build Nginx and PHP-fpm with supervisord on ubuntu image:

 docker build --build-arg VER=php_version  -t tag:version  .


Eg:  docker build --build-arg VER=7.2  -t test:v2 .
