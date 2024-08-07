#!/bin/bash
kubectl delete -f Fluent-Bit_RBAC.yml
kubectl apply -f dummy_logger.yml
kubectl delete -f Fluent-Bit_Config.yml
kubectl delete -f Fluent-Bit.yml