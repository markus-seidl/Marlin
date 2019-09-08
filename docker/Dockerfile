FROM ubuntu
MAINTAINER suculent@me.com

RUN mkdir /opt/workspace
WORKDIR /opt/workspace

RUN apt-get update \
	&& apt-get install -y --no-install-recommends wget unzip git make srecord bc xz-utils gcc python curl python-pip python-dev build-essential \
 	&& python -m pip install --upgrade pip setuptools \
 	&& pip install -U platformio \
 	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Populate needed libs beforehand
RUN mkdir /opt/dummy
COPY platformio.ini /opt/dummy
WORKDIR /opt/dummy
RUN pio run

WORKDIR /opt/workspace

COPY cmd.sh /opt
RUN chmod +x /opt/cmd.sh

CMD /opt/cmd.sh
