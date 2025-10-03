#!/bin/sh
kubectl apply -f .
kubectl rollout restart deployment pingpong
