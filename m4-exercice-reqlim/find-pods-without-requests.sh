#!/bin/sh
kubectl get pods --all-namespaces -o json | jq '
  .items[]
  | select(.spec.containers[0].resources.requests.cpu==null)
  | [ .metadata.namespace, .metadata.name,
      .metadata.ownerReferences[0].kind, .metadata.ownerReferences[0].name]
  | @tsv
  ' -r | column -t
