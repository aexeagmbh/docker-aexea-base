FROM python:3.5-slim
MAINTAINER Aexea Carpentry

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    locales \
    zlib1g-dev \
    libjpeg-dev \
    libxml2-dev \
    libxslt1-dev \
    lib32z1-dev \
    libmemcached-dev \
    postgresql-server-dev-all \
    git \
    postgresql-client \
    libfreetype6-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN useradd uid1000 -d /home/uid1000
RUN mkdir -p /home/uid1000 && chown uid1000: /home/uid1000
VOLUME /home/uid1000
