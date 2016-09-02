FROM aexea/aexea-base-py2
MAINTAINER Aexea Carpentry

RUN apt-get update && apt-get install -y python-pip python-dev

ONBUILD COPY requirements*.txt /opt/code/
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip install -Ur requirements.txt \
	&& if test -e requirements-deploy.txt; then \
		pip install -Ur requirements-deploy.txt; \
	fi

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
ONBUILD USER uid1000
