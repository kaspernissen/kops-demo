#!/bin/bash
export KOPS_NAME="public-single-master.phennex.com"
kubectl config use-context $KOPS_NAME

# Create the kubernetes dashboard
kubectl create -f https://raw.githubusercontent.com/kubernetes/kops/master/addons/kubernetes-dashboard/v1.5.0.yaml
