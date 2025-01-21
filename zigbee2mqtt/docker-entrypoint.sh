#!/bin/sh
set -e

if [ ! -z "$ZIGBEE2MQTT_DATA" ]; then
    DATA="$ZIGBEE2MQTT_DATA"
else
    DATA="/app/data"
fi

echo "Using '$DATA' as data directory"

if [ ! -f "$DATA/configuration.yaml" ]; then
    echo "Creating configuration file..."
    cp /app/configuration.example.yaml "$DATA/configuration.yaml"
fi

if [ ! -z "$MOSQUITTO_PASSWORD" ]; then
    echo "Changing mosquitto password"
    sed -i "s/password: .*/password: $MOSQUITTO_PASSWORD/g" "$DATA/configuration.yaml"
fi

exec "$@"