DOCKER_IMAGE="dl-docker"

docker run -it  --name "my-dl-container" \
    -v ~/Desktop/dl-docker-dir:/dl-docker-dir \
    -w /dl-docker-dir \
    $DOCKER_IMAGE
