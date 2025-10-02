#!/bin/sh
set -x
SERVICE=test-svc-$$
kubectl create service clusterip $SERVICE --tcp=80
IPADDR=$(kubectl get svc $SERVICE -o template='{{.spec.clusterIP}}')
curl -m3 $IPADDR
kubectl label service $SERVICE container.training/testsvc=
