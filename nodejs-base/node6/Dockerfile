FROM aexea/aexea-base:node6
MAINTAINER Aexea Carpentry

RUN mkdir -p /opt/code
RUN chown uid1000:uid1000 /opt/code
WORKDIR /opt/code

ONBUILD COPY package.json package.json
ONBUILD RUN npm install

ONBUILD COPY . /opt/code
ONBUILD RUN chown -R uid1000:uid1000 /opt/code
ONBUILD USER uid1000
