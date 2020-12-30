FROM clojure:openjdk-11-lein-2.9.5

ARG USER="builder"

LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.authors="Yannick Scherer <yannick.scherer@gmail.com>"

LABEL org.into-docker.builder-user="${USER}"
LABEL org.into-docker.runner-image="adoptopenjdk/openjdk11:alpine-jre"
LABEL org.into-docker.runner-entrypoint="java -jar /opt/app.jar"

WORKDIR /into
ENV HOME="/into/home" LEIN_JVM_OPTS="-Duser.home=/into/home"
RUN useradd -d "${HOME}" -m "${USER}"
COPY into/ .
