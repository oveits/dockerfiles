FROM maven:3.6.3-jdk-11-slim

RUN groupadd centos -g 1000 \
    && useradd -m centos -u 1000 -g 1000 -d /home/user
RUN mkdir -p /root/.m2 && chown centos:centos -R /root
#&& ln -s /home/user/.m2 /root/.m2 

USER centos
WORKDIR /home/user

#RUN mkdir -p /home/user/.m2

ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh", "mvn"]
#CMD mvn
