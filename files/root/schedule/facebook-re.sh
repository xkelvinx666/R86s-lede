#!/bin/sh
facebook_code=$(curl -I -m 10 -o /dev/null -s -w %{http_code} https://www.facebook.com)
readonly facebook_code 
if [ $facebook_code != "200" ]
then
    curl https://service-el11agni-1253213981.gz.apigw.tencentcs.com/release/restart-xray-hk-debian
fi
