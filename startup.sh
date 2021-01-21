# !/bin/bash

kubectl create namespace monitoring
kubectl create -f clusterRole.yml
kubectl create -f prometheus-configmap.yml -n monitoring

# Deploy prometheus
kubectl create -f prometheus-deployment.yml -n monitoring
kubectl create -f prometheus-service.yml -n monitoring

# Deploy grafana
kubectl create -f grafana-deployment.yml -n monitoring
kubectl create -f grafana-service.yml -n monitoring

# Deploy pushgateway
kubectl create -f pushgateway-deployment.yml -n monitoring
kubectl create -f pushgateway-service.yml -n monitoring

