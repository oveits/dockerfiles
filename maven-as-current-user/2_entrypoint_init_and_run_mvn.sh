#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
    while true; do echo waiting for process to be killed...; sleep 60; done
else
  /usr/local/bin/mvn-entrypoint.sh \
    && exec $@
fi

