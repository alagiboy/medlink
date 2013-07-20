#!/bin/sh
# needs spawn-fcgi version >= 1.6

exec 2>&1

export RAILS_ENV=production
export LANG=en_US.UTF-8

# www-data is the user lighty runs as
exec /usr/bin/spawn-fcgi -s /var/run/lighttpd/rails-application.sock -n -U www-data -u www-data -- /root/medlink/public/dispatch.fcgi

