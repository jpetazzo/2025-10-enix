#!/bin/sh

helm install hasher ./generic
helm install redis ./generic
helm install rng ./generic
helm install webui ./generic
helm install worker ./generic
