#!/bin/sh

helm upgrade --install --repo https://traefik.github.io/charts \
  traefik traefik --namespace traefik --create-namespace \
  --version 37.1.2 \
  --set deployment.kind=DaemonSet \
  --set service.type=ClusterIP \
  #

