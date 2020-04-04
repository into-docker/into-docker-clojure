FROM clojure:openjdk-11-lein-2.9.1
LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL into.v1.runner="adoptopenjdk/openjdk11:alpine-jre"
LABEL into.v1.runner.cmd="java -jar /opt/app.jar"

WORKDIR /into
COPY build assemble ignore ./
