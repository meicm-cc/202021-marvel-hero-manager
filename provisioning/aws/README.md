# Usefull Commands

## Configure GCloud environment (project + region)
gcloud init 

## Configure Docker "login" to use the GCP container registry
gcloud auth configure-docker

## Get Kubectl Context
gcloud container clusters get-credentials <<cluster_name>>