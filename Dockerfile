FROM ubuntu
RUN apt-get update && apt-get install -y default-jre && apt-get install -y default-jdk
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/bin/java