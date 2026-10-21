#!/bin/bash

# $1 is a special variable that grabs the word you type after the script name
TARGET=$1

echo "Checking the health of $TARGET..."

# curl -I fetches just the HTTP headers ( like 200 OK or 404 NOT FOUND )

curl -I -L $TARGET 
