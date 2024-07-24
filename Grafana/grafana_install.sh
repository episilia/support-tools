#! /bin/bash
read -p "Please enter the Grafana version that you want to deploy: " VERSION

case $VERSION in
    8)
        echo "Deploying grafana version v8.0.5"

        echo "reading the namespace from user"
        read -p "Please enter the namespace: " name

        echo "checking and creating the namespace"
        kubectl get ns $name || kubectl create namespace $name

        echo "Deploying grafana"
        kubectl create deployment grafana --image=docker.io/grafana/grafana:8.0.5-ubuntu -n $name
        kubectl expose deployment grafana --type=LoadBalancer --port=80 --target-port=3000 --protocol=TCP -n $name
        echo
        ;;
    10)
        echo "Deploying grafana version v10.0.12"

        echo "reading the namespace from user"
        read -p "Please enter the namespace: " name

        echo "checking and creating the namespace"
        kubectl get ns $name || kubectl create namespace $name

        echo "Deploying grafana"
        kubectl create deployment grafana --image=docker.io/grafana/grafana:10.0.12-ubuntu -n $name
        kubectl expose deployment grafana --type=LoadBalancer --port=80 --target-port=3000 --protocol=TCP -n $name
        echo
        ;;
    *)
        echo "Sorry selected grafana version $VERSION is not available."
        echo  
        ;;
esac