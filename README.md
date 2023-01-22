# Unbound-DNS-Blocking
The Blocklist can be created as a static list or you could fetch the website list from various repositories which cater sites list.

One such list which i found really useful was “StevenBlack” Github Repo where he has a well-curated block list from various sources.

The custom scripts to fetch the list and change it to our need.

For updating our list daily we could run our script as a cronjob.

To add StevenBlack-hosts.conf to unbound.conf .

Change /etc/unbound/unbound.conf

include: /etc/unbound/conf.d/*.conf
