#!/bin/sh
#!/bin/bash
#############################################################################################################################
# The Apache-2.0 license 
# Wael Isa
# https://github.com/waelisa/Unbound-DNS-Blocking
#############################################################################################################################
cd /etc/unbound/unbound.conf.d/
rm -fr hosts StevenBlack-hosts.conf oisd-unbound.conf
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
cat hosts | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\""}' > StevenBlack-hosts.conf
rm -fr hosts unbound
wget https://big.oisd.nl/unbound
mv unbound oisd-unbound.conf
/sbin/service unbound reload
