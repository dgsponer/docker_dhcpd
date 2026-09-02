FROM alpine:latest
RUN set -xe \
	&& apk add --update --no-progress --no-cache dhcp \
	&& rm -rf /var/cache/apk/*
CMD ["sh", "-c", "/usr/sbin/dhcpd -4 -f -d --no-pid -cf /etc/dhcpd/dhcpd.conf $DHCPD_LISTEN_INTERFACE"]
