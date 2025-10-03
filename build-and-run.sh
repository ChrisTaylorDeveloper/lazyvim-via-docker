#!/bin/bash

if [ -z "$1" ]; then
    echo "Directory required."
    exit 1
fi

docker build --tag lazyvim_alpine .
docker run -it --rm -v "$1":/vol -w /vol lazyvim_alpine nvim
