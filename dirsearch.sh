#! /bin/bash

. ./config

if [[ $* == *-b* ]]
then
    python3 $dirsearch -u $2  -w $wordlist1 -x 400-499 -r -R 3  --crawl --replay-proxy "127.0.0.1:8080" --random-agent --deep-recursive --timeout 15 -t 10  -e js,php,bak,txt,html,zip,sql,old,gz,log,swp,yaml,yml,config,save,rsa,ppk,log,json,rb,tar
else
    python3 $dirsearch -u $1  -w $wordlist1 -x 400-499 -r -R 3  --crawl --random-agent --deep-recursive --timeout 15 -t 10  -e js,php,bak,txt,html,zip,sql,old,gz,log,swp,yaml,yml,config,save,rsa,ppk,log,json,rb,tar
fi
