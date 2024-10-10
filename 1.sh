#!/bin/bash
output=$(aws secretsmanager get-secret-value --secret-id envs)
secret_string=$(echo "$output" | jq -r '.SecretString')
key_value=$(echo "$secret_string" | jq -r 'to_entries | .[] | "\(.key)=\(.value)"')
echo "$key_value" > arun.env

rm -f arun.env.cpt
ccrypt -e -k arun arun.env
rm -f arun.env
