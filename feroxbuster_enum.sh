#! /bin/bash

. ./config

if [[ $* == *-b* ]]
then
    $feroxbuster -u $2 -t 10 --smart --burp --auto-tune -w $wordlist4 -e -C 400,404 -r  --random-agent
else
    $feroxbuster -u $1 -t 10 --smart  --auto-tune -w $wordlist4 -e -C 400,404 -r  --random-agent
fi
