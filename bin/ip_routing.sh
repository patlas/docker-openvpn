#!/bin/bash -ex
iptables -t nat -A PREROUTING -p tcp --dport 65010 -j DNAT --to-destination 192.168.255.10:80
iptables -t nat -A PREROUTING -p tcp --dport 64010 -j DNAT --to-destination 192.168.255.10:3080
iptables -t nat -A POSTROUTING -j MASQUERADE
