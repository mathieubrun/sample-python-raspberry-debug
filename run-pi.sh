#!/bin/bash

HOST=192.168.1.75
USER=pi

rsync -ratlz --exclude ".git" --progress . ${USER}@${HOST}:/home/pi/test

ssh ${USER}@${HOST} -t "pushd /home/pi/test && ./run-local.sh $1"