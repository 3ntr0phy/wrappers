#! /bin/bash

. ./config

$feroxbuster -k -u $1 -w $wordlist2 --random-agent -d 5 -m GET --threads 20 -S 200 -n 
$feroxbuster -k -u $1 -w $wordlist3 --random-agent -d 5 -m GET --threads 20 -S 200 -n 
