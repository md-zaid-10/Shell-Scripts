#!/bin/bash

# Make sure to connect the EC2 instance with the AWS Cli before running the script
#######################
# Author: Mohammedzaid
# Date: 21/01/2026
# Verion: v1
# This Script will report the AWS resource usage

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# List all the S3 Buckets
echo "Print list of S3 buckects"
aws s3 ls

# List EC2 instances
echo "Print list of EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda functions
echo "Print List of Lambda functions"
aws lambda list-functions

# List AWS IAM Users
echo "Print the list of IAM Users"
aws iam list-users