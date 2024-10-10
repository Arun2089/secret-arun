#!/bin/bash
output=$(aws secretsmanager get-secret-value --secret-id name)
secret_string=$(echo "$output" | jq -r '.SecretString')
key_value=$(echo "$secret_string" | jq -r 'to_entries | .[] | "\(.key)=\(.value)"')
echo "$key_value" > arun.env
ccrypt -e -k arun arun.env

