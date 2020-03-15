#!/usr/bin/env bash

export FROM_IMAGE=maven:3.6.3-jdk-11-slim

cat Dockerfile.tmpl | envsubst > Dockerfile
docker build -t oveits/maven-as-user . 
