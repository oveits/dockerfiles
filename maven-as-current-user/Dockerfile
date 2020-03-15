ARG FROM_IMAGE_VERSION=latest
FROM maven:$FROM_IMAGE_VERSION

COPY 1_entrypoint-user.sh /

RUN chmod +x /1_entrypoint-user.sh 

ENTRYPOINT ["/1_entrypoint-user.sh", "/usr/local/bin/mvn-entrypoint.sh", "mvn"]

