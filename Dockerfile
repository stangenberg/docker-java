FROM stangenberg/baseimage:latest

MAINTAINER Thorben Stangenberg <thorben@stangenberg.ch>

# add webupt8 repository - see http://www.webupd8.org/
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

# automatically accept oracle license
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# install java 7 oracle jdk
RUN apt-get -y install oracle-java7-installer

# configure environment variables
RUN apt-get install oracle-java7-set-default

# Clean up when done.
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*
