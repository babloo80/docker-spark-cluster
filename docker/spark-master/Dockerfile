FROM spark-base:3.0.0

COPY start-master.sh /

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

CMD ["/bin/bash", "/start-master.sh"]
