#!/bin/bash

# Get the current date
current_date=$(date +"%m%d%y")

# Print the current date
echo "Current Date: $current_date"

docker build . --tag registry.echobase.network:5000/forwardproxy:$current_date

docker push registry.echobase.network:5000/forwardproxy:$current_date
