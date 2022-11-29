#!/bin/sh
wget https://adllist-1253213981.cos.ap-guangzhou.myqcloud.com/geo-ad.txt -O /tmp/geo-ad.txt
cat /tmp/geo-ad.txt | grep "full:" > /etc/mosdns/rule/pi-hole.txt
