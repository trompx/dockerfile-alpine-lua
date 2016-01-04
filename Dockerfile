FROM kutsudock/rpi-alpine:latest

RUN apk update \
		&& apk add lua lua-dev luarocks5.1 \
		&& apk upgrade \
		&& rm -rf /var/cache/apk/* \
		&& apk update

WORKDIR /lua
VOLUME /lua

CMD ["/bin/echo", "Base image!"]
