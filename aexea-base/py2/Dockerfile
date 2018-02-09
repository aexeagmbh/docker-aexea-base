FROM python:2
LABEL maintainer "Aexea Carpentry"

ENV DEBIAN_FRONTEND noninteractive
ENV AX_USER uid1000

RUN apt-get update && apt-get install -y \
	lib32z1-dev \
	libmemcached-dev \
	locales \
	postgresql-client \
	postgresql-server-dev-all \
	sudo \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd $AX_USER -d /home/$AX_USER
RUN mkdir -p /home/$AX_USER && chown $AX_USER: /home/$AX_USER
VOLUME /home/$AX_USER
