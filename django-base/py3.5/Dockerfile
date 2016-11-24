FROM aexea/aexea-base:py3.5
MAINTAINER Aexea Carpentry

EXPOSE 8000
RUN pip3 install psycopg2 lxml Pillow pandas wheel

ONBUILD COPY requirements*.txt /opt/code/
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ -Ur requirements.txt \
	&& if test -e requirements-deploy.txt; then \
		pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ -Ur requirements-deploy.txt; \
	fi

ONBUILD RUN mkdir /opt/code/media
ONBUILD RUN chown -r uid1000 /opt/code/media

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
ONBUILD USER uid1000
