#!/bin/sh
wget -O /etc/mosdns/rule/adlist.txt https://anti-ad.net/domains.txt
service mosdns restart