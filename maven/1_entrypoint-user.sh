#!/usr/bin/env bash

groupadd centos -g 1000 \
  && useradd -m centos -u 1000 -g 1000 -d /home/user \
  && chown centos:centos -R /root

exec $@
