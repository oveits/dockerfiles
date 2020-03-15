#!/usr/bin/env bash

MVN_AS_USER_IMAGE=oveits/maven-as-user

# create local maven repo
mkdir -p $HOME/.m2

# start container in the background as root
# the entrypoint files create user and group
CONTAINER=$(docker run -d --rm \
  -e MYUID=$(id -u) \
  -e MYGID=$(id -g) \
  -e MYUSER=$(id -nu) \
  -e MYGROUP=$(id -ng) \
  -v $(pwd):/pwd \
  -v $HOME/.m2:/home/user/.m2 \
  -w /pwd $MVN_AS_USER_IMAGE )

# run the maven command as current user:
docker exec -it -u $(id -u) $CONTAINER mvn $@

# cleaning: delete container
docker stop $CONTAINER >/dev/null &
