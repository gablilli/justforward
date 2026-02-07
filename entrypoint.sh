#!/bin/sh
set -e

touch /var/log/fetchmail.log /var/log/msmtp.log

exec fetchmail -f /etc/fetchmailrc -v
