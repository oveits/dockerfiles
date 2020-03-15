#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
  groupadd $MYGROUP -g $MYGID \
    && useradd -m $MYUSER -u $MYUID -g $MYGID -d /home/user  \
    &&  while true; do echo waiting for process to be killed...; sleep 60; done
else
  exec $@
fi
