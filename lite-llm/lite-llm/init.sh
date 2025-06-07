#!/bin/bash

echo "LITELLM_MASTER_KEY=\"$MASTER_KEY\"" > /app/.env
echo "LITELLM_SALT_KEY=\"$SALT_KEY\"" >> /app/.env
echo 'SERVER_ROOT_PATH="/local_open-webui/ingress"' >> /app/.env



exec litellm --port 4000 --config /app/config.yaml

