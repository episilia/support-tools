#!/bin/bash
kubectl delete -f Prometheus_Service.yml
kubectl delete -f Prometheus_RBAC.yml
kubectl delete -f Prometheus_Config.yml
kubectl delete -f Prometheus.yml