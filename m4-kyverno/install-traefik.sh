#!/bin/sh

helm upgrade --install --repo https://traefik.github.io/charts \
  traefik traefik --namespace traefik --create-namespace \
  --version 37.1.2 \
  --set deployment.kind=DaemonSet \
  --set service.type=ClusterIP \
  --set tolerations[0].effect=NoSchedule \
  --set tolerations[0].key=node-role.kubernetes.io/control-plane \
  --set ports.web.hostPort=80 \
  --set ports.websecure.hostPort=443 \
  --set providers.kubernetesGateway.enabled=true \
  --set gateway.listeners.web.namespacePolicy.from=All \
  --set ingressRoute.dashboard.enabled \
  #
