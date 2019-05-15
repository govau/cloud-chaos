#!/bin/bash

set -euo pipefail
set -v

: "${ENV_NAME:?must set ENV_NAME e.g. d}"
: "${EXPERIMENT:?must set EXPERIMENT e.g. kill-go-router}"

export CF_API_URL=https://api.system.${ENV_NAME}.cld.gov.au

# check that all AWS envs are set
if [ -z "${AWS_ACCESS_KEY_ID:-}" ] || [ -z "${AWS_SECRET_ACCESS_KEY:-}" ] || [ -z "${AWS_REGION:-}" ]; then
  echo 'must set $AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY. and $AWS_REGION' >&2
  exit 1
fi

# set required locale
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
chaos run cloud-chaos.git/experiments/${EXPERIMENT}.json
