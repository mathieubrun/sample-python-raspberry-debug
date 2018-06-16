#!/bin/bash

source ./config

rsync -ratlz --exclude ".git" --exclude ".env" --progress . ${USER}@${HOST}:/home/pi/${PROJECT}