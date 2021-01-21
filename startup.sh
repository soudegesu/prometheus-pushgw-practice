# !/bin/bash

kubectl create namespace monitoring
kubectl apply -f clusterRole.yml
kubectl apply -f prometheus-configmap.yml -n monitoring

# Deploy pushgateway
kubectl apply -f pushgateway-deployment.yml -n monitoring
kubectl apply -f pushgateway-service.yml -n monitoring

# Deploy prometheus
kubectl apply -f prometheus-deployment.yml -n monitoring
kubectl apply -f prometheus-service.yml -n monitoring

# Deploy grafana
kubectl apply -f grafana-deployment.yml -n monitoring
kubectl apply -f grafana-service.yml -n monitoring
