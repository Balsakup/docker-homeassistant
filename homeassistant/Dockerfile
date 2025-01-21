ARG HOMEASSISTANT_VERSION=latest

FROM "ghcr.io/home-assistant/home-assistant:${HOMEASSISTANT_VERSION}"

ARG UID
ARG GID

RUN addgroup -S -g "${GID}" homeassistant
RUN adduser -S -u "${UID}" -D -H -h /var/empty -s /sbin/nologin -G homeassistant -g homeassistant homeassistant