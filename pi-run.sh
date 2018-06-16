#!/bin/bash

source ./config

./pi-copy.sh

ssh ${USER}@${HOST} -t "pushd /home/pi/${PWD##*/} && ./build.sh && ./run.sh $@"