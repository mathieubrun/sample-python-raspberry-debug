#!/bin/bash

source ./config

docker stop ${CONTAINER_NAME} 2> /dev/null
docker run --name ${CONTAINER_NAME} --privileged --rm -ti -p 3000:3000 --entrypoint "python3" ${IMAGE} debug.py "$@"