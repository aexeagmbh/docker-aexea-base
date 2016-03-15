FROM aexea/django-base
MAINTAINER Aexea Carpentry

USER root

# scipy / scikit-learn
RUN apt-get update && apt-get -y upgrade && apt-get install -y libblas-dev liblapack-dev libatlas-base-dev gfortran
RUN pip3 install scipy==0.17.0
RUN pip3 install scikit-learn==0.17.1

RUN pip3 install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.7.1-cp34-none-linux_x86_64.whl
RUN pip3 install skflow

USER uid1000
