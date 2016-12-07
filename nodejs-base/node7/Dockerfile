FROM aexea/aexea-base:node7
MAINTAINER Aexea Carpentry

RUN mkdir -p /opt/code
RUN chown node:node /opt/code
WORKDIR /opt/code

ONBUILD COPY package.json package.json
ONBUILD RUN npm install

ONBUILD COPY . /opt/code
ONBUILD RUN chown -R node:node /opt/code
ONBUILD USER node
