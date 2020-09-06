echo 'Removing Spark...'
microk8s kubectl config set-context --current --namespace=data-science
# microk8s kubectl delete -f spark-data-persistentvolume.yaml
# microk8s kubectl delete -f spark-data-persistentvolumeclaim.yaml
# microk8s kubectl delete -f spark-apps-persistentvolume.yaml
# microk8s kubectl delete -f spark-apps-persistentvolumeclaim.yaml
microk8s kubectl delete -f spark-master-node-deployment.yaml
microk8s kubectl delete -f spark-worker-node-deployment.yaml
microk8s kubectl delete -f spark-jupyterlab-deployment.yaml
microk8s kubectl delete service spark-master-node
microk8s kubectl delete service spark-worker-node
microk8s kubectl delete service spark-jupyterlab