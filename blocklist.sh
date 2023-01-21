#!/bin/sh
cd /etc/unbound/unbound.conf.d/
rm -fr hosts StevenBlack-hosts.conf
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
cat hosts | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\""}' > StevenBlack-hosts.conf
rm -fr hosts
/sbin/service unbound reload
