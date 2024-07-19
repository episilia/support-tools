#!/bin/bash
kubectl apply -f AlertManager_Service.yml
kubectl apply -f AlertManager_Templates.yml
kubectl apply -f AlertManager.yml
kubectl apply -f Email_AlertManager.yml
kubectl apply -f Slack_AlertManager.yml