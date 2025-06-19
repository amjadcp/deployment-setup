#!/bin/bash
set -a
source .env
set +a
envsubst < config.template.yml > kafkaui/config.yml
