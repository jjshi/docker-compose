#!/bin/sh
# 启动接口php-fpm
echo "ENV=$ENV" >> /etc/environment
if [ $ENV == 'prod' ]; then
    filename=php-fpm-prod.conf
else
    filename=php-fpm-test.conf
fi;

ln -f -s /project/config/api/$filename /usr/local/etc/php/fpm/php-fpm.conf
php-fpm
