#!/bin/bash
export KOPS_PROFILE_NAME="phennex-kops-demo"

aws iam create-group --group-name $KOPS_PROFILE_NAME

export arns="
arn:aws:iam::aws:policy/AmazonEC2FullAccess
arn:aws:iam::aws:policy/AmazonRoute53FullAccess
arn:aws:iam::aws:policy/AmazonS3FullAccess
arn:aws:iam::aws:policy/IAMFullAccess
arn:aws:iam::aws:policy/AmazonVPCFullAccess"

for arn in $arns; do aws iam attach-group-policy --policy-arn "$arn" --group-name $KOPS_PROFILE_NAME; done

aws iam create-user --user-name $KOPS_PROFILE_NAME
aws iam add-user-to-group --user-name $KOPS_PROFILE_NAME --group-name $KOPS_PROFILE_NAME
aws iam create-access-key --user-name $KOPS_PROFILE_NAME

echo ""
echo "Remeber to save the credentials in ~/.aws/credentials"
