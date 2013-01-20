Updates DynDNS-A-Record at freedns.afraid.org if IP has changed

Usage through cron - Add-On dcron is  required. 
By the way, I had manually to create these paths:

mkdir -p /storage/.xbmc/userdata/addon_data/service.system.dcron/crontabs


Your crontab entries should look like this:

# Checks every 10 minutes: 00:00, 00:10, ... 00:50
0,10,20,30,40,50	*	*	*	*	/storage/bin/openelec_dyndns_update.sh
# Checks after reboot
@reboot 						/storage/bin/openelec_dyndns_update.sh

m@rcus.net - 01/2013

Comes without any warranty.

###########################################################

Do not forget to modify domainname und API-key!

###########################################################
