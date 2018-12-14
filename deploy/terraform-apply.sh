#!/usr/bin/env bash

KEY="aws_access_key=$AWS_ACCESS_KEY_ID"
SECRET="aws_secret_key=${AWS_SECRET_KEY}"

terraform apply -input=false terraform.plan -var ${KEY} -var ${SECRET}
