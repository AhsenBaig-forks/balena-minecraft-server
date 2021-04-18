#!/usr/bin/env bash

# Copy the configuration from source to server files if it doesn't already exist.
if [[ ! -e "/serverfiles/dynuiuc.conf" ]]; then
  printf "%s\n" "Copying config"
  cp /etc/dynuiuc/dynuiuc.conf /serverfiles/dynuiuc.conf
fi

exec /usr/sbin/ddclient -daemon 300 -syslog -file /serverfiles/dynuiuc.conf
