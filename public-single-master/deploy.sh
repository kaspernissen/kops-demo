#!/bin/bash
export AWS_PROFILE="AWS PROFILE"
export KOPS_NAME="KOPS NAME OF YOUR CLUSTER"
export KOPS_STATE_STORE="s3://INSERT S3 BUCKET HERE"
export PUBLIC_HOSTED_ZONE_ID="PRIVATE ZONE"

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
