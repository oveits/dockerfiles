#!/usr/bin/env bash

# Maven specific entrypoint

mkdir -p /root/.m2 \
  && chown centos:centos -R /root \
  && mkdir -p /home/centos/.m2

exec $@

