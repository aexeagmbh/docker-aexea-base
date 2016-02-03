FROM aexea/aexea-base
MAINTAINER Aexea Carpentry

EXPOSE 8000
RUN pip3 install psycopg2 lxml Pillow pandas wheel

ONBUILD ADD requirements.txt /opt/code/requirements.txt
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ -Ur requirements.txt

ONBUILD RUN mkdir /opt/code/media
ONBUILD RUN chown -r uid1000 /opt/code/media

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
ONBUILD USER uid1000
