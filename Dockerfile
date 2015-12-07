FROM stangenberg/baseimage:latest

MAINTAINER Thorben Stangenberg <thorben@stangenberg.net>

# add webupt8 repository - see http://www.webupd8.org/
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

# automatically accept oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# install java 8 oracle jdk
RUN apt-get -y install oracle-java8-installer

# configure environment variables
RUN apt-get install oracle-java8-set-default

# Clean up when done.
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*
