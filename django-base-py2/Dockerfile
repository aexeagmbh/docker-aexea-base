FROM aexea/aexea-base-py2
MAINTAINER Aexea Carpentry

RUN apt-get update && apt-get install -y python-pip python-dev

ONBUILD ADD requirements.txt /opt/code/requirements.txt
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip install -Ur requirements.txt

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
ONBUILD USER uid1000
