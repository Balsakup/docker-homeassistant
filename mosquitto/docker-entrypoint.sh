#!/bin/ash
set -e

passwd_file="/mosquitto/config/passwd"

# Create password file
if [ ! -z "$MOSQUITTO_PASSWORD" ]; then
	if [ ! -f "$passwd_file" ]; then
		echo "Create password"
		mosquitto_passwd -c -b "$passwd_file" mosquitto "$MOSQUITTO_PASSWORD"
	else
		echo "Update password"
		mosquitto_passwd -b "$passwd_file" mosquitto "$MOSQUITTO_PASSWORD"
	fi
fi

exec "$@"