FROM daocloud.io/ceylog/server-jre8:master-3e59905

ENV MAVEN_VERSION=3.3.9 \
    MAVEN_URL=http://mirrors.hust.edu.cn/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz

WORKDIR /tmp

RUN apk add --no-cache --update-cache curl ca-certificates bash && \
    curl -Lo apache-maven-${MAVEN_VERSION}-bin.tar.gz ${MAVEN_URL} && \
    tar -xf apache-maven-${MAVEN_VERSION}-bin.tar.gz
    apk del curl ca-certificates && \
    mv apache-maven-${MAVEN_VERSION} /maven && \

ENV M2_HOME=/maven
ENV PATH=${PATH}:${M2_HOME}/bin


