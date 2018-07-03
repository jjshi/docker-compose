#!/bin/sh

cronfile=/project/config/cron/crontab.$ENV
startfile=/project/config/supervisor/$ENV.conf
echo "ENV=$ENV" >> /etc/environment
sync_once(){
    cp $cronfile /etc/crontab
    cp $startfile /etc/supervisor/conf.d/all.conf
}
sync_file(){
    while true; do
        sleep 10
        sync_once
    done
}

sync_once
sync_file &

supervisord -c /etc/supervisor/supervisord.conf

cron -f