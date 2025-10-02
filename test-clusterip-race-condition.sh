#!/bin/sh
set -x
SERVICE=test-svc-$RANDOM
kubectl create service clusterip $SERVICE --tcp=80
IPADDR=$(kubectl get svc $SERVICE -o template='{{.spec.clusterIP}}')
curl -m3 $IPADDR
kubectl label $SERVICE container.training/testsvc=
