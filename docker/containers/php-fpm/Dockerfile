FROM php:7.3-fpm-alpine

RUN apk update && apk --no-cache add \
    autoconf \
    gcc \
    g++ \
    icu-dev \
    libxml2-dev \
    libzip-dev \
    make \
    zlib-dev \
    tzdata

RUN docker-php-ext-install -j$(nproc) \
    intl \
    mbstring \
    opcache \
    pdo \
    pdo_mysql \
    simplexml \
    zip \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

EXPOSE 8765
CMD ["bin/cake", "server", "-H", "0.0.0.0"]
