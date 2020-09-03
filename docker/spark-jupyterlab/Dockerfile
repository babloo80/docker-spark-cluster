FROM spark-base:latest 

ARG spark_version=3.0.0
ARG jupyterlab_version=2.1.5
ARG apps_directory=/opt/spark-apps

RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install pyspark==${spark_version} jupyterlab==${jupyterlab_version}

EXPOSE 9898
RUN mkdir -p ${apps_directory} 
WORKDIR ${apps_directory} 
CMD jupyter lab --ip=0.0.0.0 --port=9898 --no-browser --allow-root --NotebookApp.token=
