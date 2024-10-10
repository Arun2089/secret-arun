#!/bin/bash
output=$(aws secretsmanager get-secret-value --secret-id envs)
secret_string=$(echo "$output" | jq -r '.SecretString')
key_value=$(echo "$secret_string" | jq -r 'to_entries | .[] | "\(.key)=\(.value)"')
echo "$key_value" > .env
ccrypt -e -k arun .env

