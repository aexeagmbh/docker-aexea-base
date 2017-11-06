FROM aexea/aexea-base:node9
MAINTAINER Aexea Carpentry

RUN mkdir -p /opt/code
RUN chown node:node /opt/code
WORKDIR /opt/code

ONBUILD COPY package*.json /opt/code
ONBUILD RUN npm install

ONBUILD COPY . /opt/code
ONBUILD RUN chown -R node:node /opt/code
ONBUILD USER node
