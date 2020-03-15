#!/usr/bin/env bash

export FROM_IMAGE_VERSION=${FROM_IMAGE_VERSION:=3.6.3-jdk-11-slim}
export TO_IMAGE=${TO_IMAGE:=oveits/maven-as-user:latest}

#cat Dockerfile.tmpl | envsubst > Dockerfile
docker build --build-arg FROM_IMAGE_VERSION=$FROM_IMAGE_VERSION -t $TO_IMAGE . 
