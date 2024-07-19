#!/bin/bash
kubectl apply -f Prometheus_Service.yml
kubectl apply -f Prometheus_RBAC.yml
kubectl apply -f Prometheus_Config.yml
kubectl apply -f Prometheus.yml