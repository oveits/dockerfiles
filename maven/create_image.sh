#!/usr/bin/env bash

export MYUID=$(id -u)
export MYGID=$(id -g)
export MYUSER=$(id -nu)
export MYGROUP=$(id -ng)
export FROM_IMAGE=maven:3.6.3-jdk-11-slim

cat Dockerfile.tmpl | envsubst > Dockerfile
docker build -t mvn . 
