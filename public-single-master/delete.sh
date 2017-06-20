#!/bin/bash
export AWS_PROFILE="phennex-kops-demo"
export KOPS_NAME="KOPS NAME OF YOUR CLUSTER"
export KOPS_STATE_STORE="s3://phennex-kops-state-store"

kops delete cluster --name $KOPS_NAME --yes
