#!/bin/sh
#
# Updates DynDNS-A-record at freedns.afraid.org
#
# Checks before update if IP has changed
#
# m@rcus.net, 01/2013
#
# Comes without any warranty
#
# Don't forget to modify <$DYNDNS-DOMAIN> and <$API-KEY> to your needs
#


DNS_IP=`nslookup <$DYNDNS-DOMAIN> | grep Address | tail -n 1 | awk 'BEGIN {FS=" "}{print $3}'`
CURRENT_IP=`curl -s icanhazip.com`

if [ $DNS_IP != $CURRENT_IP ]
then
	curl -s -k https://freedns.afraid.org/dynamic/update.php?<$API-KEY> >> /var/log/dyn.ip.log
fi		

exit 0
