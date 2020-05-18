FROM tonyrl/aria2-daemon

MAINTAINER tonyrl

RUN \
 apk add --no-cache --upgrade \
		darkhttpd \
		git && \
 git clone https://github.com/ziahamza/webui-aria2 /aria2-webui && \
 rm /aria2-webui/.git* -rf && \
 cp /aria2-webui/src/js/services/configuration.js /conf/aria2-webui-configuration.js && \
 apk del git

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

EXPOSE 80
