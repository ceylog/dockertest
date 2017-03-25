FROM daocloud.io/ceylog/server-jre8:master-5f4c2d3

WORKDIR /tmp

RUN apk add --no-cache --update-cache curl unzip ca-certificates bash && \
    curl -Lo gradle-3.4.1-bin.zip "https://downloads.gradle.org/distributions/gradle-3.4.1-bin.zip" && \
    unzip gradle-3.4.1-bin.zip && \
    apk del curl unzip ca-certificates && \
    mv gradle-3.4.1 /gradle

ENV GRADLE_HOME=/gradle
ENV PATH=${PATH}:${GRADLE_HOME}/bin


