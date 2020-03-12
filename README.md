# DL Docker

This repository contains files to run a docker with some DL packages.

## How to use

1- Build the docker image (Check [this for how to install Docker](https://docs.docker.com/install/)):
```
$ docker build -t dl-docker .
```

2- Run the docker container:
```
$ ./start_container.sh
```

## Features to add/Issues to fix

- Build docker image from `start_container.sh` if not available
- Add ffmpeg and ffprobe
- Improve the prompt (add docker container name etc.)
