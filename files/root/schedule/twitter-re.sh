#!/bin/sh
twitter_code=$(curl -I -m 10 -o /dev/null -s -w %{http_code} https://twitter.com)
readonly twitter_code 
if [ $twitter_code != "200" ]
then
    curl https://service-el11agni-1253213981.gz.apigw.tencentcs.com/release/restart-trojan-hk-debian
fi
