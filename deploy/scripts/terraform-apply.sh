#!/usr/bin/env bash

cd ../terraform/eu-west-2
terraform apply -input=false ./terraform.plan 
