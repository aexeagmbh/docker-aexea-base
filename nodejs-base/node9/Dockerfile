FROM aexea/aexea-base:node9
LABEL maintainer "Aexea Carpentry"

RUN mkdir -p /opt/code
RUN chown node:node /opt/code
WORKDIR /opt/code

ENV TERM xterm
ENV npm_config_loglevel warn

ONBUILD RUN chown -R node:node /opt/code
ONBUILD USER node
ONBUILD COPY package*.json /opt/code/
ONBUILD RUN npm install

ONBUILD COPY . /opt/code
ONBUILD USER root
ONBUILD RUN find . -path ./node_modules -prune -o -exec chown node:node '{}' \;
ONBUILD USER node
