#!/bin/bash

if [ -z "$1" ]; then
    echo "Directory required."
    exit 1
fi

docker build --tag lazyvim .
docker run -it --rm --volume "$1":/workdir lazyvim nvim
