#!/bin/bash
export AWS_PROFILE="INSERT KOPS IAM PROFILE NAME HERE"
export KOPS_STATE_STORE="INSERT THE NAME OF THE S3 BUCKET HERE"
export REGION=eu-west-1

# Create the bucket using awscli
aws s3api create-bucket --bucket $KOPS_STATE_STORE --region $REGION --create-bucket-configuration LocationConstraint=$REGION

# Add versioning to the bucket!
aws s3api put-bucket-versioning --bucket $KOPS_STATE_STORE  --versioning-configuration Status=Enabled --region $REGION
