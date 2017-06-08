#!/bin/bash
export AWS_PROFILE="phennex-kops-demo"
export KOPS_NAME="public-single-master.phennex.com"
export KOPS_STATE_STORE="s3://phennex-kops-state-store"

kops validate cluster
