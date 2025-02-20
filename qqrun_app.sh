#!/usr/bin/env bash
set -x

podman run \
	--name=mediasoupdemo_app \
	-it \
	--rm \
	mediasoupdemo_app:latest
