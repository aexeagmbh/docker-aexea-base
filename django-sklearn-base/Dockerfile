FROM aexea/aexea-base
MAINTAINER Aexea Carpentry

EXPOSE 8000
RUN pip3 install psycopg2 lxml Pillow pandas wheel

# scipy / scikit-learn
RUN apt-get update && apt-get -y upgrade && apt-get install -y libblas-dev liblapack-dev libatlas-base-dev gfortran
RUN pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ scipy==0.18.0
RUN pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ scikit-learn==0.17.1

# tensorflow
RUN pip3 install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp34-cp34m-linux_x86_64.whl

# hunspell
RUN apt-get update && apt-get install -y libhunspell-dev libicu-dev unzip

ONBUILD COPY requirements*.txt /opt/code/
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ -Ur requirements.txt \
	&& if test -e requirements-deploy.txt; then \
		pip3 install --trusted-host=pypi.qax.io --find-links=http://pypi.qax.io/wheels/ -Ur requirements-deploy.txt; \
	fi

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
ONBUILD USER uid1000
