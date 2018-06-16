#!/bin/bash

source ./config
source ./pi-copy.sh

ssh ${USER}@${HOST} -t "pushd /home/pi/${PWD##*/} && ./build.sh && ./debug.sh $@"