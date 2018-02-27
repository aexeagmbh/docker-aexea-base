FROM aexea/aexea-base:py3.6-stretch
LABEL maintainer "Aexea Carpentry"

EXPOSE 8000
RUN pip3 install --no-binary psycopg2 psycopg2 lxml Pillow pandas wheel

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://download.mono-project.com/repo/debian stretch/snapshots/5.2 main" > /etc/apt/sources.list.d/mono-stretch.list \
	&& apt-get update \
	&& apt-get install -y mono-profiler mono-devel ca-certificates-mono fsharp graphviz mono-vbnc nuget nunit nunit-console default-jre zip \
	&& rm -rf /var/lib/apt/lists/*

COPY get_locales.py /root
COPY install_locales.sh /root

ONBUILD COPY requirements*.txt /opt/code/
ONBUILD COPY pip.conf /root/.config/pip/pip.conf
ONBUILD WORKDIR /opt/code
ONBUILD RUN pip3 install -Ur requirements.txt \
	&& if test -e requirements-deploy.txt; then \
		pip3 install -Ur requirements-deploy.txt; \
	fi

ONBUILD RUN /root/install_locales.sh

ONBUILD ADD . /opt/code
ONBUILD WORKDIR /opt/code
ONBUILD USER uid1000
