#!/bin/bash
export AWS_PROFILE="AWS PROFILE"
export KOPS_NAME="KOPS NAME OF YOUR CLUSTER"
export KOPS_STATE_STORE="s3:// S3 BUCKET NAME"
export PRIVATE_HOSTED_ZONE_ID="PRIVATE ROUTE53 ZONE ID"

kops create cluster \
  --name $KOPS_NAME \
  --state $KOPS_STATE_STORE \
  --node-count 3 \
  --zones eu-west-1a,eu-west-1b,eu-west-1c \
  --master-zones eu-west-1a,eu-west-1b,eu-west-1c \
  --dns-zone=${PRIVATE_HOSTED_ZONE_ID} \
  --dns private \
  --node-size t2.medium \
  --master-size t2.small \
  --topology private \
  --networking weave \
  --bastion \
  --yes
