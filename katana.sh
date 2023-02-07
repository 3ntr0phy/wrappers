#! /bin/bash

. ./config

if [[ $* == *-b* ]]
then
    $katana -jc -proxy http://127.0.0.1:8080 -u $2
else
    $katana -jc -u $1
fi
