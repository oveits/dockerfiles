ARG FROM_IMAGE_VERSION=latest
FROM maven:$FROM_IMAGE_VERSION

COPY 1_entrypoint-user.sh 2_entrypoint_init_and_run_mvn.sh /

RUN chmod +x /1_entrypoint-user.sh /2_entrypoint_init_and_run_mvn.sh

ENTRYPOINT ["/1_entrypoint-user.sh", "/2_entrypoint_init_and_run_mvn.sh", "mvn"]

