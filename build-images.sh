#!/bin/bash

set -e

docker build -t spark-base:3.0.0 ./docker/base
docker build -t spark-master:3.0.0 ./docker/spark-master
docker build -t spark-worker:3.0.0 ./docker/spark-worker
docker build -t spark-jupyterlab:3.0.0 ./docker/spark-jupyterlab
