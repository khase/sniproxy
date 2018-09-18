FROM hypriot/rpi-alpine-scratch:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net>

RUN	apk update \
	&& apk add sniproxy

COPY overlay/ /

EXPOSE 443

ENTRYPOINT [ "sniproxy", "-f" ]
