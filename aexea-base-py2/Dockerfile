FROM ubuntu:14.04
MAINTAINER Aexea Carpentry

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    curl \
    git \
    lib32z1-dev \
    libjpeg8-dev \
    libmemcached-dev \
    libxml2-dev \
    libxslt1-dev \
    postgresql-client \
    postgresql-server-dev-all \
    python-dev \
    python-pip \
    python-virtualenv \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN useradd uid1000 -d /home/uid1000
RUN mkdir -p /home/uid1000 && chown uid1000: /home/uid1000
VOLUME /home/uid1000
