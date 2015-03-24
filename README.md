# Docker java-builder

[Java][JAVA] build container for [drone ci][DRONE]

Dockerhub: [thstangenberg/java-builder][DOCKERHUB]


## Features ##

- [Java][JAVA]


## Exposed volumes ##

None.


## Exposed ports ##

- 22 / SSH 


## Environment Variables

None.


## Usage ##

add `image: thstangenberg/java` to your .done.yml to use the latest version. Currently java 8.

- use `image: thstangenberg/java:8` for java 8
- use `image: thstangenberg/java:7` for java 7


## Build 

Make is used as build system.

- `make` / starts normal docker build.
- `make run` / build and run the container. This uses `java-builder` as container name and automatically stops a running container with an equal name beforehand. 
- `make bash` /  build, run the container and start a bash prompt.
- `make ncbuild` / normal build without using the docker cache ( --no-cache ).

[Docker Build Reference https://docs.docker.com/reference/builder/](https://docs.docker.com/reference/builder/)


## License ##

[Published under the MIT License][LICENSE]

[DRONE]: https://github.com/drone/drone
[JAVA]: https://www.java.com/en/
[DOCKERHUB]: https://hub.docker.com/u/stangenberg/docker-java-builder
[LICENSE]: https://bitbucket.org/stangenberg/docker-java-builder/src/master/LICENSE.md "Published under the MIT License"
