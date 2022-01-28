FROM php:7.4-fpm

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    wget git zsh fish

run Wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh;

RUN sh ./install.sh; 

RUN rm ./install.sh

RUN apt autoremove

WORKDIR /var/www/
