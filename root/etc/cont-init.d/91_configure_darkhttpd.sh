#!/usr/bin/with-contenv bash

cp -n /app/start_darkhttpd.sh /config/start_darkhttpd.sh

chmod +x /config/start_darkhttpd.sh

chown -R abc:abc /config
