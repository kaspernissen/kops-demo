#!/bin/bash
export AWS_PROFILE="phennex-kops-demo"
export KOPS_NAME="private-multiple-masters.phennex.com"
export KOPS_STATE_STORE="s3://phennex-kops-state-store"
export PRIVATE_HOSTED_ZONE_ID="Z3MHJZW72A9UK2"

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
