#!/bin/bash
kubectl delete -f MinIO_Service.yml
kubectl delete -f MinIO_PVC.yml
kubectl delete -f MinIO.yml