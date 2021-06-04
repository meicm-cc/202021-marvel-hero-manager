# Useful Commands


## Ingress 

https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.46.0/deploy/static/provider/cloud/deploy.yaml

## ACR Docker login

az acr login --name <<acr_server>>


## AKS Kubectl 

echo "$(terraform output kube_config)" > ./azurek8s

Open the file and remove EOF annotations

export KUBECONFIG=./azurek8s

