#!/bin/bash
export AWS_PROFILE="phennex-kops-demo"
export KOPS_NAME="public-single-master.phennex.com"
export KOPS_STATE_STORE="s3://phennex-kops-state-store"
export PUBLIC_HOSTED_ZONE_ID="Z7FZPDI93JBWL"

kops create cluster \
  --name $KOPS_NAME \
  --state $KOPS_STATE_STORE \
  --dns-zone $PUBLIC_HOSTED_ZONE_ID \
  --node-count 3 \
  --zones eu-west-1a \
  --master-zones eu-west-1a \
  --cloud aws \
  --node-size t2.medium \
  --master-size t2.medium \
  --yes
