# Docker java-builder

[Java][JAVA] container

Dockerhub: [stangenberg/java][DOCKERHUB]


## Features ##

- [Java 7][JAVA]


## Exposed volumes ##

None.


## Exposed ports ##

- 22 / SSH


## Environment Variables

None.


## Usage ##

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


## License ##

[Published under the MIT License][LICENSE]

[DRONE]: https://github.com/drone/drone
[JAVA]: https://www.java.com/en/
[DOCKERHUB]: https://hub.docker.com/u/stangenberg/docker-java
[LICENSE]: https://github.com/stangenberg/docker-java/blob/master/LICENSE.md
