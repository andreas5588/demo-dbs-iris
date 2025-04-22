ARG IMAGE=containers.intersystems.com/intersystems/iris-community:2025.1
FROM $IMAGE

USER root   

WORKDIR /opt/demodbsiris
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/demodbsiris
USER ${ISC_PACKAGE_MGRUSER}

COPY src src
COPY lib lib
COPY iris_initialisation.script iris_initialisation.script

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN iris start IRIS && iris session IRIS < iris_initialisation.script && iris stop IRIS quietly