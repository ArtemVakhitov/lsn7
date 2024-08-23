FROM maven:3.9.9-eclipse-temurin-8-alpine
RUN apk add git
WORKDIR /tmp
RUN mkdir -p hello
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
CMD mvn package && \
    cp target/hello-1.0.war ../hello/