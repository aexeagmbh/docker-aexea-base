FROM aexea/aexea-base
LABEL maintainer "Aexea Carpentry"

USER root
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install -g bower gulp ember-cli phantomjs

RUN mkdir -p /opt/code
RUN chown uid1000:uid1000 /opt/code
WORKDIR /opt/code
USER uid1000
