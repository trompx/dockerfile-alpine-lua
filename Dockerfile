FROM kutsudock/rpi-alpine:latest

RUN apk update \
		&& apk add lua lua-dev --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
		&& apk upgrade \
		&& rm -rf /var/cache/apk/* \
		&& apk update

WORKDIR /lua
VOLUME /lua

CMD ["/bin/echo", "Base image!"]
