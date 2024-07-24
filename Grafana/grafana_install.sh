#! /bin/bash

echo "Select the Grafana version that you want to deploy:"
echo "1) Grafana v8.0.5"
echo "2) Grafana v10.0.12"
echo "3) Exit"

read -p "Enter the number corresponding to your choice: " choice

case $choice in
    1)
        VERSION="8.0.5-ubuntu"
        echo "You have selected Grafana version v8.0.5"
        ;;
    2)
        VERSION="10.0.12-ubuntu"
        echo "You have selected Grafana version v10.0.12"
        ;;
    3)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

echo "Reading the namespace from user"
read -p "Please enter the namespace (default if not specified): " name
name=${name:-default}

if [ "$name" != "default" ]; then
    echo "Checking and creating the namespace if it does not exist"
    kubectl get ns $name || kubectl create namespace $name
    namespace_option="-n $name"
else
    namespace_option=""
fi

echo "Deploying Grafana version $VERSION"
kubectl create deployment grafana --image=docker.io/grafana/grafana:$VERSION $namespace_option
kubectl expose deployment grafana --type=LoadBalancer --port=80 --target-port=3000 --protocol=TCP $namespace_option
echo "Deployment complete."