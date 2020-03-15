#!/usr/bin/env bash

# Maven specific entrypoint
# TODO: is this command really needed?

if [ "$(id -u)" == "0" ]; then
  mkdir -p /root/.m2 \
    && chown $MYUSER:$MYGROUP -R /root
fi

exec $@

