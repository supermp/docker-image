FROM php:7-fpm
MAINTAINER supermp <supermp@foxmail.com>

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        libmcrypt-dev \
        zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-enable opcache \
 && docker-php-ext-install pdo_mysql mcrypt zip

ENV COMPOSER_VERSION 1.4.1
RUN curl https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer \
 && composer config -g repo.packagist composer https://packagist.phpcomposer.com
