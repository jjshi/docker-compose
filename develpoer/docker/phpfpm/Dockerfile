FROM php:7.0-fpm-alpine
LABEL author="luo.cheng@tslsmart.com"

RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories

RUN apk add --no-cache tzdata \
	&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& apk del tzdata

RUN apk add --no-cache libjpeg-turbo-dev \
        libwebp-dev \
        libpng-dev \
        freetype-dev \
        libmcrypt-dev \
        curl-dev \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd curl mysqli pdo pdo_mysql

 RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install redis-3.1.3 \
    && docker-php-ext-enable redis \
    && pecl clear-cache \
    && apk del .phpize-deps