#!/bin/bash
export AWS_PROFILE="AWS PROFILE"
export KOPS_NAME="KOPS NAME OF YOUR CLUSTER"
export KOPS_STATE_STORE="s3://INSERT S3 BUCKET HERE"

kops validate cluster
