#!/bin/sh

deploy() {
  NAMESPACE=$1
  REPLICAS=$2
  kubectl create namespace $1 -o yaml --dry-run | kubectl apply -f-
  export REPLICAS
  envsubst < dockercoins.yaml | kubectl --namespace $NAMESPACE apply -f-
}



deploy m3-prod 10
deploy m3-dev 2
deploy m3-preprod 5
