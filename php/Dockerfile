FROM php:7.1-fpm
LABEL maintainer="supermp@foxmail.com"

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        libpng-dev \
        libjpeg-dev \
        libwebp-dev \
        libfreetype6-dev \
        libmcrypt-dev \
        zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-enable opcache \
 && docker-php-ext-configure gd --with-jpeg-dir --with-webp-dir --with-freetype-dir \
 && docker-php-ext-install mysqli pdo_mysql gd mcrypt zip

ENV COMPOSER_VERSION 1.7.3
RUN curl https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer \
 && composer config -g repo.packagist composer https://packagist.phpcomposer.com
