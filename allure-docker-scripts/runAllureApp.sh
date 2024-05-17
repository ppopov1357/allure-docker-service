#!/bin/bash

WORKERS_CONFIG="${WORKERS:-7}"

gunicorn -w "$WORKERS_CONFIG" "allure-docker-api.app:app" -b "$HOST:$PORT" --timeout 1000