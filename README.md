# Docker HomeAssistant

## Prerequisites
- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Taskfile](https://taskfile.dev/)

### Optional
- [Python](https://www.python.org/)
- [UV](https://github.com/astral-sh/uv)

I used Python and UV to install and run Taskfile.

## Purpose

This Docker project sets up an environment running HomeAssistant using MQTT.  
[Mosquitto](https://mosquitto.org/) is used as the broker, and [Zigbee2MQTT](https://www.zigbee2mqtt.io/) is used as the bridge.

This project was set up for my needs, so it may not suit everyone.

You are free to modify it as you wish. Each service is built from a `Dockerfile`, allowing for customization.

## Configuration

```shell
cp .env.example .env
```

Modify the values in the `.env` file as needed.

## Start the project

```shell
# With Python and UV
uv run task start

# Without Python
task start
```

## Stop the project

```shell
# With Python and UV
uv run task stop

# Without Python
task stop
```

## Update the project

Update the versions in the `.env` file, then restart the project.

```shell
# With Python and UV
uv run task start

# Without Python
task start
```