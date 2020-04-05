FROM clojure:openjdk-11-lein-2.9.1

ARG COMMIT
ARG BUILD_DATE

LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.vcs-ref="${COMMIT}"
LABEL org.label-schema.vcs-url="https://github.com/into-docker/into-docker-lein"
LABEL org.label-schema.build-date="${BUILD_DATE}"
LABEL into.v1.runner="adoptopenjdk/openjdk11:alpine-jre"
LABEL into.v1.runner.cmd="java -jar /opt/app.jar"

WORKDIR /into

# Add ignore information from Github's collection of ignore files
# License: CC0 1.0 Universal
RUN curl -sL "https://raw.githubusercontent.com/github/gitignore/master/LICENSE" > ignore.LICENSE && \
    curl -sL "https://raw.githubusercontent.com/github/gitignore/master/Leiningen.gitignore" > ignore

COPY into/ .
