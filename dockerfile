ARG IMAGE=containers.intersystems.com/intersystems/iris-community:latest-cd
FROM $IMAGE

USER root   

WORKDIR /opt/demodbsiris
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/demodbsiris
USER ${ISC_PACKAGE_MGRUSER}

COPY src src
COPY lib lib
COPY iris.script iris.script

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN iris start IRIS && iris session IRIS < iris.script && iris stop IRIS quietly