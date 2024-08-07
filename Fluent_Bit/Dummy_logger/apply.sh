#!/bin/bash
kubectl apply -f Fluent-Bit_RBAC.yml
kubectl apply -f Dummy_logger.yml
kubectl apply -f Fluent-Bit_Config.yml
kubectl apply -f Fluent-Bit.yml
