# Docker java-builder
[Java][JAVA] container

[![Docker Stars](https://img.shields.io/docker/stars/stangenberg/java.svg)][hub] [![Docker Pulls](https://img.shields.io/docker/pulls/stangenberg/java.svg)][hub] [![Image Size](https://img.shields.io/imagelayers/image-size/stangenberg/java/7.svg)](https://imagelayers.io/?images=stangenberg/java:7) [![Image Layers](https://img.shields.io/imagelayers/layers/stangenberg/java/7.svg)](https://imagelayers.io/?images=stangenberg/java:7)

## Features
- [Java 7][JAVA]

## Exposed volumes
None.

## Exposed ports
None

## Environment Variables
- JAVA_HOME

## Usage
### With [Drone][DRONE]
add `image: stangenberg/java` to your .done.yml to use the latest version. Currently java 8.
- use `image: stangenberg/java:8` for java 8
- use `image: stangenberg/java:7` for java 7

## Build
Make is used as build system.
- `make` / starts normal docker build.
- `make run` / build and run the container. This uses `java` as container name and automatically stops a running container with an equal name beforehand.
- `make bash` /  build, run the container and start a bash prompt.
- `make ncbuild` / normal build without using the docker cache ( --no-cache ).

[Docker Build Reference https://docs.docker.com/reference/builder/](https://docs.docker.com/reference/builder/)

## License
[Published under the MIT License][LICENSE]

[drone]: https://github.com/drone/drone
[java]: https://www.java.com/en/
[dockerhub]: https://hub.docker.com/u/stangenberg/docker-java
[license]: https://github.com/stangenberg/docker-java/blob/master/LICENSE.md
