# Tachidesk-docker

| Build | Docker Pulls | Stable |Preview |
|:-:|:-:|:-:|:-:|
| [![Build Docker Images](https://github.com/arbuilder/Tachidesk-docker/actions/workflows/build_images.yml/badge.svg)](https://github.com/arbuilder/Tachidesk-docker/actions/workflows/build_images.yml) | [![Docker Pulls](https://img.shields.io/docker/pulls/arbuild/tachidesk-docker?label=dockerhub)](https://hub.docker.com/r/arbuild/tachidesk-docker/)  [![Docker Pulls](https://img.shields.io/badge/dynamic/json?url=https://github.com/suwayomi/docker-tachidesk/raw/main/scripts/tachidesk_version.json&label=github&query=$.total_downloads&color=blue)](https://github.com/orgs/suwayomi/packages/container/package/tachidesk)| [![Latest](https://img.shields.io/badge/dynamic/json?url=https://github.com/arbuilder/tachidesk-docker/raw/main/scripts/tachidesk_version.json&label=version&query=$.stable&color=blue) ![Latest](https://img.shields.io/docker/image-size/arbuild/tachidesk-docker/latest.svg?label=latest) ![Slim](https://img.shields.io/docker/image-size/arbuild/tachidesk-docker/slim.svg?label=slim)](https://hub.docker.com/r/arbuild/tachidesk-docker/) | [![Preview](https://img.shields.io/badge/dynamic/json?url=https://github.com/arbuilder/tachidesk-docker/raw/main/scripts/tachidesk_version.json&label=version&query=$.preview&color=blue) ![Preview](https://img.shields.io/docker/image-size/arbuild/tachidesk-docker/preview?label=preview) ![Slim](https://img.shields.io/docker/image-size/arbuild/tachidesk-docker/preview-slim.svg?label=preview-slim)](https://hub.docker.com/r/arbuild/tachidesk-docker/) |

Run [Tachidesk](https://github.com/AriaMoradi/Tachidesk) server inside docker container as non-root user (arbuilder). The server will be running on http://localhost:4567 open this url in your browser.

Dockerhub Image - https://hub.docker.com/repository/docker/arbuild/tachidesk-docker

Log file location - /home/arbuilder/.local/share/Tachidesk/logfile.log

Docker Images are run as non-root user and tested with Docker Scan for known vulnerabilities, for more details use docker scan IMAGE_NAME command

    docker scan docker.io/arbuild/tachidesk-docker:latest

New docker images are pushed to the dockerhub within an hour after new Tachidesk stable or preview version are released.

Slim version is mutli-arch (linux/386, linux/amd64, linux/arm/v6, linux/arm/v7, linux/arm64, linux/ppc64le, linux/s390x) and has very small size based on alpine linux.

### Offical Tachidesk Docker Images

docker.io/arbuild/tachidesk-docker will be decreciated in the future as i am releasing the Official Tachidesk Docker Images builds on ghcr.io/suwayomi/tachidesk. Readme for ghcr.io/suwayomi/tachidesk is avilable at https://github.com/suwayomi/docker-tachidesk (only alpine multiarch based docker images).

### Tachidesk docker container versions

| Tag | latest | slim | preview | preview-slim | v * . * . * |
|:-:|:-:|:-:|:-:|:-:| :-:|
| info | latest stable version | latest stable in small container size | latest preview beta | latest preview beta in small container size | specific tachidesk stable version |
| command | docker run -p 4567:4567 docker.io/arbuild/tachidesk-docker |  docker run -p 4567:4567 docker.io/arbuild/tachidesk-docker:slim |  docker run -p 4567:4567 docker.io/arbuild/tachidesk-docker:preview | docker run -p 4567:4567 docker.io/arbuild/tachidesk-docker:preview-slim | docker run -p 4567:4567 docker.io/arbuild/tachidesk-docker:v0.2.7 |

# Commands

Expose to localhost ip

    docker run -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker

Expose to specific ip

    docker run -p 192.168.x.x:4567:4567 docker.io/arbuild/tachidesk-docker

Expose to all ips

    docker run -p 4567:4567 docker.io/arbuild/tachidesk-docker

Change the default UTC timezone. Use TZ database name from [Timezone list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)

    docker run -e "TZ=Europe/London" -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker
	
For Tachidesk Preview version

     docker run -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker:preview

Persistent data of tachidesk on subsequent run

    docker run -p 127.0.0.1:4567:4567 -v <folder path>:/./home/arbuilder/.local/share/Tachidesk docker.io/arbuild/tachidesk-docker
    
Slim version (uses alpine docker image and only openjdk is installed)

     docker run -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker:slim
     
For Tachidesk Preview version

     docker run -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker:preview
	 
For Tachidesk Preview Slim version (uses alpine docker image and only openjdk is installed)

     docker run -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker:preview-slim	 
	 
For Specific Tachidesk stable version (from v0.2.7 onwards)

     docker run -p 127.0.0.1:4567:4567 docker.io/arbuild/tachidesk-docker:v0.2.7

# Credit

[Tachidesk](https://github.com/Suwayomi/Tachidesk) is licensed under `MPL v. 2.0`.

# License

    This Source Code Form is subject to the terms of the Mozilla Public
    License, v. 2.0. If a copy of the MPL was not distributed with this
    file, You can obtain one at http://mozilla.org/MPL/2.0/.
