#!/bin/sh
google_code=$(curl -I -m 10 -o /dev/null -s -w %{http_code} https://www.google.com)
readonly google_code
if [ $google_code != "200" ]
then
    curl https://service-el11agni-1253213981.gz.apigw.tencentcs.com/release/reboot-hk-centos
fi
