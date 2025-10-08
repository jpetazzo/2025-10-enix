#!/bin/sh
set -e

for COMPONENT in hasher redis rng webui worker;
do
  helm upgrade --install $COMPONENT --values value-$COMPONENT.yaml
done

