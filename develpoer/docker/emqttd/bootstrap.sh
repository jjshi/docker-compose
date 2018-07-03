#!/bin/sh

ln -f -s /project/config/emq/emq_auth_http.$ENV.conf /opt/emqttd/etc/plugins/emq_auth_http.conf

/opt/emqttd/start.sh
./bin/emqttd_ctl plugins load emq_auth_http