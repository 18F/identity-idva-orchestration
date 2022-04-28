#!/bin/bash
proxy_url=$(echo "$VCAP_SERVICES" | jq -r '."user-provided"?[]? | select(.name == "outbound-proxy") | .credentials.proxy_url')

# Export proxy url variable only if the "proxy_url" variable is not empty
if [ -n "$proxy_url" ]; then
  export PROXY_URL="$proxy_url"
  echo ".profile script automatically set PROXY_URL: $PROXY_URL"
else
  echo ".profile script did not find proxy information in VCAP_SERVICES"
fi
