#!/bin/sh
set -e

for VALUES in values/*.yaml; do
  COMPONENT=$(basename ${VALUES%.yaml})
  helm upgrade --install $COMPONENT ./generic --values $VALUES
done

