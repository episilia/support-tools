#!/bin/bash
kubectl delete -f AlertManager_Service.yml
kubectl delete -f AlertManager_Templates.yml
kubectl delete -f AlertManager.yml
kubectl delete -f Email_AlertManager.yml
kubectl delete -f Slack_AlertManager.yml