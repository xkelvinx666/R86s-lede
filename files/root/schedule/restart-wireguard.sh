#!/bin/sh
ifdown wireguard
echo 'shutdown interface wireguard'
ifup wireguard
echo 'start interface wireguard'