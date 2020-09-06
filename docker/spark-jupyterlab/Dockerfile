FROM spark-base:3.0.0 

ARG spark_version=3.0.0
ARG jupyterlab_version=2.1.5
ARG spark_directory=/opt/spark

RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install pyspark==${spark_version} jupyterlab==${jupyterlab_version}

EXPOSE 9898
RUN mkdir -p ${spark_directory}/apps
RUN mkdir -p ${spark_directory}/data
WORKDIR ${spark_directory}
CMD jupyter lab --ip=0.0.0.0 --port=9898 --no-browser --allow-root --NotebookApp.token=
