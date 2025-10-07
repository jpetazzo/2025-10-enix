#!/bin/sh

helm upgrade --install hasher ./generic --set image.repository=dockercoins/hasher
helm upgrade --install redis ./generic
helm upgrade --install rng ./generic
helm upgrade --install webui ./generic
helm upgrade --install worker ./generic
