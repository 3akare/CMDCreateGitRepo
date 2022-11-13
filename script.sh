#!/usr/bin/env bash

if [ -z "${1}" ]
then
    echo "Usage: ${0} <repository name>"
else
    echo "Enter github username: "
    read username #github username
    echo "Welcome, $username"
    echo ""
    echo "Enter personal access token: "
    read token
    curl -u $username https://api.github.com/user/repos -d '{"name":"'${1}'","private":false}'
    git clone https://$username:$token@github.com/$username/${1}
fi