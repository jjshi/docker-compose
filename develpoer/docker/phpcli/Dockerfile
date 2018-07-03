# see: https://github.com/fideloper/docker-nginx-php/
FROM index.alauda.cn/library/ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y \
    supervisor \
    curl \
    php5 php5-cli \
    php5-gd php5-mysql php5-memcached php5-redis php5-mcrypt \
    php5-curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN php5enmod mcrypt

CMD cron -f