FROM clojure:openjdk-11-lein-2.9.1
LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL into.v1.runner="adoptopenjdk/openjdk11:alpine-jre"
LABEL into.v1.runner.cmd="java -jar /opt/app.jar"
WORKDIR /into

# Add ignore information from Github's collection of ignore files
# License: CC0 1.0 Universal
RUN curl -sL "https://raw.githubusercontent.com/github/gitignore/master/LICENSE" > ignore.LICENSE && \
    curl -sL "https://raw.githubusercontent.com/github/gitignore/master/Leiningen.gitignore" > ignore

COPY into/ .
