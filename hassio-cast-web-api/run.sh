#!/bin/sh
set -e

CONFIG_PATH=/data/options.json

PPORT ="$(jq --raw-output '.target' $CONFIG_PATH)"
# start server
npm start

cast-web-api
