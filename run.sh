#!/bin/bash

source ./config

docker stop ${CONTAINER_NAME} 2> /dev/null
docker run --name ${CONTAINER_NAME} --privileged --rm -ti ${IMAGE} "$@"