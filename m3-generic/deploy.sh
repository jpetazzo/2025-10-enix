#!/bin/sh

helm upgrade --install hasher ./generic \
  --set image.repository=dockercoins/hasher \
  --set image.tag=v0.1 \
  #
helm upgrade --install redis ./generic \
  --set image.repository=redis
  --set image.tag=latest \
  #
helm upgrade --install rng ./generic \
  --set image.repository=dockercoins/rng \
  --set image.tag=v0.1 \
  #
helm upgrade --install webui ./generic \
  --set image.repository=dockercoins/webui \
  --set image.tag=v0.1 \
  #
helm upgrade --install worker ./generic \
  --set image.repository=dockercoins/worker \
  --set image.tag=v0.1 \
  #
