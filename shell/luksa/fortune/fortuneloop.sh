#!/bin/bash

# Exit gracefully on SIGINT (Ctrl+C)
trap "exit" SIGINT

# Create /var/htdocs directory if it doesn't exist
mkdir -p /var/htdocs

# Loop indefinitely
while :
do
    # Write fortune to /var/htdocs/index.html
    echo "$(date) Writing fortune to /var/htdocs/index.html"
    /usr/games/fortune > /var/htdocs/index.html
    sleep 10
done