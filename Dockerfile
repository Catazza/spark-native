FROM ubuntu
RUN apt-get update && apt-get install -y default-jre && apt-get install -y default-jdk
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/bin/java
RUN apt-get -y install scala
WORKDIR spark-native

RUN apt-get install -y wget
RUN wget http://apache.mirror.anlx.net/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
RUN tar zxvf spark-* -C /usr/local
RUN mv /usr/local/spark-* /usr/local/spark

ENV SPARK_HOME=/usr/local/spark
ENV PATH=$PATH:$SPARK_HOME/bin

COPY spark-env.sh $SPARK_HOME/conf/spark-env.sh
