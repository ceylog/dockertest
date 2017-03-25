FROM daocloud.io/ceylog/server-jre8:master-3e59905

WORKDIR /tmp

RUN apk add --no-cache --update-cache curl ca-certificates bash && \
    curl -Lo apache-maven-3.3.9-bin.tar.gz "http://mirrors.hust.edu.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz" && \
    tar -xf apache-maven-3.3.9-bin.tar.gz && \
    apk del curl ca-certificates && \
    mv apache-maven-3.3.9 /maven

ENV M2_HOME=/maven
ENV PATH=${PATH}:${M2_HOME}/bin


