#!/usr/bin/env bash

echo $AWS_ACCESS_KEY_ID

terraform plan -input=false -out=terraform.plan -var 'aws_access_key=$AWS_ACCESS_KEY_ID' -var 'aws_secret_key=$AWS_SECRET_KEY'
