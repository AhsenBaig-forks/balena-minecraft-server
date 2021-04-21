#!/usr/bin/env bash

# Copy the configuration from source to server files if it doesn't already exist.
if [[ ! -e "/serverfiles/ddclient.conf" ]]; then
  printf "%s\n" "Copying config"
    
  cp /etc/ddclient.conf /serverfiles/ddclient.conf
fi

# exec /usr/sbin/ddclient -daemon 300 -syslog -file /serverfiles/ddclient.conf
exec /usr/sbin/ddclient -daemon=300 -foreground -syslog -verbose -noquiet -file /serverfiles/ddclient.conf -cache /servercache/ddclient.cache