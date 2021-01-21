# !/bin/bash

kubectl create namespace monitoring
kubectl create -f clusterRole.yml
kubectl create -f prometheus-configmap.yml -n monitoring
kubectl create -f prometheus-deployment.yml -n monitoring
kubectl create -f prometheus-service.yml -n monitoring

kubectl create -f grafana-deployment.yml -n monitoring
