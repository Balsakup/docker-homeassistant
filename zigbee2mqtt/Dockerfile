ARG ZIGBEE2MQTT_VERSION=latest

FROM "koenkk/zigbee2mqtt:${ZIGBEE2MQTT_VERSION}"

ARG UID
ARG GID

RUN addgroup -S -g "${GID}" zigbee2mqtt
RUN adduser -S -u "${UID}" -D -H -h /var/empty -s /sbin/nologin -G zigbee2mqtt -g zigbee2mqtt zigbee2mqtt