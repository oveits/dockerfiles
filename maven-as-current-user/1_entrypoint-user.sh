#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
  groupadd $MYGROUP -g $MYGID \
    && useradd -m $MYUSER -u $MYUID -g $MYGID -d /home/user 
fi

exec $@
