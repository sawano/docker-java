####################################################################################
# Creates a container with OpenJDK 8
####################################################################################

# Command reference:
# docker build -t sawano/ubuntu-openjdk8:0.0.1 -t sawano/ubuntu-openjdk8:latest .
# docker run -it --rm sawano/ubuntu-openjdk8 /bin/bash


# 17.10/artful
FROM ubuntu:17.10

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    openjdk-8-jdk=8u151-b12-0ubuntu0.17.10.2 && \
    rm -rf /var/lib/apt/lists

WORKDIR /opt
