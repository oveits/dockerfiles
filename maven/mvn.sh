#!/usr/bin/env bash

IMAGE=mvn

mkdir -p $HOME/.m2
docker run -it --rm --name mvn -v $(pwd):/pwd -v $HOME/.m2:/root/.m2  -w /pwd $IMAGE $@
