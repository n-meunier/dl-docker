#!/usr/bin/env bash

IMAGE_NAME="dl-docker"
CONTAINER_NAME="${USER}-$IMAGE_NAME"

start_container () {
    docker run --rm -it --net=host --name $CONTAINER_NAME \
    -u $(id -u ${USER}):$(id -g ${USER}) \
    --privileged \
    -v ~/Desktop/dl-docker-dir:/dl-docker-dir \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/group:/etc/group:ro \
    -w /dl-docker-dir \
    $IMAGE_NAME
}

xhost + >> /dev/null
start_container
xhost - >> /dev/null
