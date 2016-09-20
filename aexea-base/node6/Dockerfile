FROM node:6
MAINTAINER Aexea Carpentry

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    g++ \
    git \
    lib32z1-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libxml2-dev \
    libxslt1-dev \
    locales \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN useradd uid1000 -d /home/uid1000
RUN mkdir -p /home/uid1000 && chown uid1000: /home/uid1000
VOLUME /home/uid1000
