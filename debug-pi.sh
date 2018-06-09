#!/bin/bash

HOST=raspberrypi.local
USER=pi

docker run --rm -ti \
        --workdir /__work \
        -v "${HOME}/.ssh:/root/.ssh" \
        -v "$(pwd):/__work" \
        mathieubrun/rsync:latest -ratlz --progress . ${USER}@${HOST}:/home/pi/test

ssh ${USER}@${HOST} -t 'pushd /home/pi/test && ./debug-local.sh'