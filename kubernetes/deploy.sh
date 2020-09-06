echo 'Deploying Spark...'
microk8s kubectl apply -f data-science-namespace.json
microk8s kubectl config set-context --current --namespace=data-science
microk8s kubectl apply -f spark-data-persistentvolume.yaml
microk8s kubectl apply -f spark-data-persistentvolumeclaim.yaml
microk8s kubectl apply -f spark-apps-persistentvolume.yaml
microk8s kubectl apply -f spark-apps-persistentvolumeclaim.yaml
microk8s kubectl apply -f spark-master-node-deployment.yaml
microk8s kubectl apply -f spark-worker-node-deployment.yaml
microk8s kubectl apply -f spark-jupyterlab-deployment.yaml
microk8s kubectl expose deployment spark-master-node --type=LoadBalancer --name=spark-master-node
microk8s kubectl expose deployment spark-worker-node --type=LoadBalancer --name=spark-worker-node
microk8s kubectl expose deployment spark-jupyterlab --type=LoadBalancer --name=spark-jupyterlab
