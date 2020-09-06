# Docker Spark Cluster

This repository provides a quick way to deploy a 2 node apache spark cluster with JupyterLab support for development purposes.

## Build Docker images and run inside Docker Compose.

```bash
./build-images.sh
./start.sh
```

## Run inside Kubernetes

1. This assumes that you have kubernetes installed and configured.
2. Kubernetes should have a private registry configured.
3. Push images to your private Docker registry.
4. Deploy to kubernetes:

```bash
cd ./kubernetes
./deploy.sh
```
