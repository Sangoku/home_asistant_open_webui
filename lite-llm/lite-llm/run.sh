#!/bin/bash
echo "LITELLM_MASTER_KEY=\"${MASTER_KEY}\"" > /app/.env
echo "LITELLM_SALT_KEY=\"${SALT_KEY}\"" >> /app/.env
source /app/.env

exec litellm --port 4000