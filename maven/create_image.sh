#!/usr/bin/env bash

export FROM_IMAGE=maven:3.6.3-jdk-11-slim

export MYUID=$(id -u)
export MYGID=$(id -g)
export MYUSER=$(id -nu)
export MYGROUP=$(id -ng)

cat Dockerfile.tmpl | envsubst > Dockerfile
cat 1_entrypoint-user.sh.tmpl | envsubst > 1_entrypoint-user.sh
cat 2_entrypoint-chown.sh.tmpl | envsubst > 2_entrypoint-chown.sh
cat 4_runas.sh.tmpl | envsubst > 4_runas.sh
docker build -t mvn . 
