FROM daocloud.io/ceylog/gradle:gradle-8845bb9

ADD build.gradle /tmp/build/
ADD src /tmp/build/src

RUN cd /tmp/build && \
    gradle -g /tmp/build && \
    gradle build -x test && \
    mv build/libs/dockertest-0.0.1.jar /app.jar && \
    cd / && rm -rf /tmp/build

VOLUME /tmp
EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
