ARG MOSQUITTO_VERSION=latest

FROM "eclipse-mosquitto:${MOSQUITTO_VERSION}"

ARG UID
ARG GID

RUN apk add --no-cache shadow expect
RUN groupmod --gid "${GID}" mosquitto
RUN usermod --uid "${UID}" --gid "${GID}" mosquitto
RUN chown -R mosquitto:mosquitto /mosquitto