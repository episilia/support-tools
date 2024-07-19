#!/bin/bash
kubectl apply -f MinIO_Service.yml
kubectl apply -f MinIO_PVC.yml
kubectl apply -f MinIO.yml