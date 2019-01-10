#!/usr/bin/env bash

cd terraform
terraform apply -input=false ./terraform.plan 
