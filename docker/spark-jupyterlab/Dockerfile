FROM spark-base:3.0.0 

ARG spark_version=3.0.0
ARG jupyterlab_version=2.1.5
ARG spark_directory=/opt/spark
ARG spylon_version=0.4.1
RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install pyspark==${spark_version} jupyterlab==${jupyterlab_version} spylon-kernel==${spylon_version}
# Install support for Scalla
RUN python -m spylon_kernel install
# Install support for Node 14
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt install -y nodejs vim dnsutils && \
    npm install -g --unsafe-perm ijavascript && \
    ijsinstall
    
EXPOSE 9898
RUN mkdir -p ${spark_directory}/apps
RUN mkdir -p ${spark_directory}/data
WORKDIR ${spark_directory}
CMD jupyter lab --ip=0.0.0.0 --port=9898 --no-browser --allow-root --NotebookApp.token=
