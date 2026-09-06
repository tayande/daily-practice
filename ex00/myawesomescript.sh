#!/bin/sh

if [ $# -ne 1 ]
then
    echo "Usage: $0 <bit.ly-link>"
    exit 1
fi

curl -sI $1 | grep -i location | cut -d " " -f 2