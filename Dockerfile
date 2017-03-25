FROM daocloud.io/ceylog/gradle:gradle-4f613d2

RUN gradle build -x test && \
    mv build/libs/dockertest-0.0.1.jar /app.jar && \
    rm -rf build

VOLUME /tmp
EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]