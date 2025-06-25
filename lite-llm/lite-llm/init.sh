#!/bin/bash

# Read values from /data/options.json using jq
LITELLM_MASTER_KEY=$(jq -r '.master_key' /data/options.json)
LITELLM_SALT_KEY=$(jq -r '.salt_key' /data/options.json)
DATABASE_URL=$(jq -r '.database_url' /data/options.json)
#temp workaround to make ingress work...
#INGRESS_SLUG=$(jq -r '.ingress_slug' /data/options.json)

# Check if required variables are set
if [ -z "$LITELLM_MASTER_KEY" ]; then
  echo "Error: master_key is not set in config" >&2
  exit 1
fi

if [ -z "$LITELLM_SALT_KEY" ]; then
  echo "Error: salt_key is not set in config" >&2
  exit 1
fi

if [ -z "$DATABASE_URL" ]; then
  echo "Error: database_url is not set in config" >&2
  exit 1
fi

# Export as environment variables
export LITELLM_MASTER_KEY
export LITELLM_SALT_KEY
#export SERVER_ROOT_PATH="/api/hassio_ingress/$INGRESS_SLUG"
export STORE_MODEL_IN_DB=True
export DATABASE_URL


#echo "LITELLM_MASTER_KEY: {$LITELLM_MASTER_KEY}\n" >&2
#echo "LITELLM_SALT_KEY: {$LITELLM_SALT_KEY}\n" >&2
#echo "SERVER_ROOT_PATH: {$SERVER_ROOT_PATH}\n" >&2
#echo "DATABASE_URL: {$DATABASE_URL}" >&2

python3 litellm/proxy/prisma_migration.py

exec litellm --port 4000 --config /app/config.yaml --host 0.0.0.0
