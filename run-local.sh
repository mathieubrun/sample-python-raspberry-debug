#!/bin/bash

IMAGE=sample-debug-py
IMAGE_NAME=dbg

docker build -t ${IMAGE} src
docker stop ${IMAGE_NAME}
docker run --name ${IMAGE_NAME} --privileged --rm -ti -p 3000:3000 ${IMAGE} $1