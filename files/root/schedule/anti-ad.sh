#!/bin/sh
wget -O /etc/mosdns/rule/adlist.txt https://anti-ad.net/domains.txt
wget -O /etc/mosdns/rule/ad-qiu-simon.txt https://raw.githubusercontent.com/QiuSimons/openwrt-mos/master/dat/serverlist.txt
service mosdns restart