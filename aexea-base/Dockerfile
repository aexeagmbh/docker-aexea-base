FROM ubuntu:14.04
MAINTAINER Aexea Carpentry

ENV DEBIAN_FRONTEND noninteractive

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install -y \
    curl \
    git \
    lib32z1-dev \
    libfreetype6-dev \
    libjpeg8-dev \
    libmemcached-dev \
    libxml2-dev \
    libxslt1-dev \
    postgresql-client \
    postgresql-server-dev-all \
    python-virtualenv \
    python3-pip \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Install latest pip
RUN easy_install3 -U "pip<8.0"

RUN useradd uid1000 -d /home/uid1000
RUN mkdir -p /home/uid1000 && chown uid1000: /home/uid1000
VOLUME /home/uid1000
