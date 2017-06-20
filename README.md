# Kops demo

This is a small demo project of Kops, demonstrating two situations for creating clusters.

## Prerequisites
* Install `kops` and `kubectl`
* Create an IAM user - get inspiration from the `iam_user.sh` script.
* Setup Route53 with you domain. Follow the guide: https://github.com/kubernetes/kops/blob/master/docs/aws.md
* Create an S3 bucket. Inspiration can be found in `s3_bucket.sh` script.

## Setup
The repository contains to directories:
* private-multiple-masters
  * Creates a HA Kubernetes cluster spread across 3 Availability Zones in private networking.
* public-single-master
  * Creates a cluster in one public zone
