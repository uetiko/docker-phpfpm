FROM php:7.4-fpm

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    wget git zsh fish autoconf automake make gcc libicu-dev libsodium-dev \
    libzip-dev vim 
RUN pecl channel-update pecl.php.net

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug

RUN docker-php-ext-install -j$(nproc) \
    bcmath \
    opcache \
    intl \
    zip \
    pdo_mysql

run wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh;

RUN sh ./install.sh; 

RUN rm ./install.sh

RUN apt autoremove

WORKDIR /var/www/

EXPOSE 9001
ENV XDEBUG_PORT 9003
