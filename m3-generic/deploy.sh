#!/bin/sh
set -e

helm upgrade --install hasher ./generic \
  --set image.repository=dockercoins/hasher \
  #
helm upgrade --install redis ./generic \
  --set image.repository=redis \
  --set image.tag=latest \
  --set readinessProbe=null \
  --set livenessProbe=null \
  #
helm upgrade --install rng ./generic \
  --set image.repository=dockercoins/rng \
  #
helm upgrade --install webui ./generic \
  --set image.repository=dockercoins/webui \
  #
helm upgrade --install worker ./generic \
  --set image.repository=dockercoins/worker \
  --set readinessProbe=null \
  --set livenessProbe=null \
  #
