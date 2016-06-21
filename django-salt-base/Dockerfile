FROM aexea/aexea-base-py2
MAINTAINER Aexea Carpentry

RUN apt-get update && apt-get install -y python-pip python-dev apt-transport-https

RUN curl -L https://bootstrap.saltstack.com -o /tmp/install_salt.sh && \
    sh /tmp/install_salt.sh -M -X -d stable 2015.8.10 && \
    rm /tmp/install_salt.sh

RUN apt-get install -y salt-cloud salt-api

RUN salt-cloud -u

ONBUILD ADD requirements.txt /opt/code/requirements.txt
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip install -Ur requirements.txt

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
