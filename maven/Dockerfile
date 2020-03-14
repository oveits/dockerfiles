# Dockerfile.tmpl
FROM maven:3.6.3-jdk-11-slim

ADD 1_entrypoint-user.sh /1_entrypoint-user.sh
ADD 2_entrypoint-chown.sh /2_entrypoint-chown.sh

RUN chmod +x /1_entrypoint-user.sh /2_entrypoint-chown.sh

ARG MYUSER
ARG MYGROUP

RUN mkdir -p /root/.m2

ENTRYPOINT ["/1_entrypoint-user.sh", "/2_entrypoint-chown.sh", "/usr/local/bin/mvn-entrypoint.sh", "mvn"]
