FROM ubuntu:20.04

ENV DAEMON_RUN=true \
    SPARK_VERSION=3.0.0 \
    HADOOP_VERSION=3.2 \
    SPARK_HOME=/spark \
    DEBIAN_FRONTEND='noninteractive' \
    TZ='America/New_York' TIMEZONE='America/New_York'

RUN echo $TZ > /etc/timezone && apt-get update && apt-get install -y curl vim wget software-properties-common ssh net-tools ca-certificates jq ca-certificates wget tar openjdk-8-jdk python3-pip && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && \
    update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

RUN wget --no-verbose http://apache.mirror.iphh.net/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
      && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark \
      && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
