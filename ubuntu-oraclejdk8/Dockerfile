####################################################################################
# Creates a container with Oracle JDK 8
####################################################################################

# Command reference:
# docker build -t sawano/ubuntu-oraclejdk8:local .
# docker run --rm -it sawano/ubuntu-oraclejdk8 /bin/bash
#
# See published packages from webupd8 here: https://launchpad.net/~webupd8team/+archive/ubuntu/java
#

FROM ubuntu:17.10

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    software-properties-common && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && apt-get install -y \
    oracle-java8-installer=8u161-1~webupd8~0 && \
    rm -rf /var/lib/apt/lists && \
    cd /usr/lib/jvm/java-8-oracle/ && \
    rm -rf *src.zip \
          lib/missioncontrol \
          lib/visualvm \
          lib/*javafx* \
          jre/bin/javaws* \
          jre/lib/plugin.jar \
          jre/lib/deploy* \
          jre/lib/*jfx* \
          jre/lib/javaws.jar \
          jre/lib/desktop \
          jre/lib/*javafx* \
          jre/lib/ext/jfxrt.jar \
          jre/lib/amd64/libdecora_sse.so \
          jre/lib/amd64/libprism_*.so \
          jre/lib/amd64/libfxplugins.so \
          jre/lib/amd64/libglass.so \
          jre/lib/amd64/libgstreamer-lite.so \
          jre/lib/amd64/libjavafx*.so \
          jre/lib/amd64/libjfx*.so \
          jre/plugin

WORKDIR /opt
