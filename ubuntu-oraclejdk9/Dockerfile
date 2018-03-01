####################################################################################
# Creates a container with Oracle JDK 9
####################################################################################

# Command reference:
# docker build -t sawano/ubuntu-oraclejdk9:local .
# docker run --rm -it sawano/ubuntu-oraclejdk9 /bin/bash
#
# See published packages from webupd8 here: https://launchpad.net/~webupd8team/+archive/ubuntu/java
#

FROM ubuntu:17.10

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    software-properties-common && \
    echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && apt-get install -y \
    oracle-java9-installer=9.0.4-1~webupd8~0 && \
    rm -rf /var/lib/apt/lists && \
    cd /usr/lib/jvm/java-9-oracle/ && \
    rm -rf *src.zip \
          lib/missioncontrol \
          lib/*javafx* \
          bin/javaws* \
          lib/plugin*.jar \
          lib/deploy* \
          lib/*jfx* \
          lib/javaws.jar \
          lib/desktop \
          lib/*javafx*

WORKDIR /opt
