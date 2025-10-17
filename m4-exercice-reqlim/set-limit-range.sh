#!/bin/sh
for NAMESPACE in $(
  kubectl get namespaces --selector '!name , kubernetes.io/metadata.name!=kube-system' -o name | cut -d/ -f2
  ); do
  kubectl apply -f limitrange.yaml --namespace $NAMESPACE
  kubectl rollout restart deployment --namespace $NAMESPACE
done
