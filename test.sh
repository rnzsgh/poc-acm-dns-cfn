#!/bin/bash

STACK_NAME=poc-acm-dns-0

# Set this to the zone name - do not include a period at the end
# For this POC, we are simply creating a wildcard *.foo.com cert
# The zone must already exist
HOSTED_ZONE=

# Set this to the zone id for the above zone
ZONE_ID=

aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://template.cfn.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=HostedZoneId,ParameterValue=$ZONE_ID \
  ParameterKey=HostedZoneName,ParameterValue=$HOSTED_ZONE



