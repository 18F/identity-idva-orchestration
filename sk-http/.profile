#!/bin/bash
proxy_url=$(echo "$VCAP_SERVICES" | jq '.["user-provided"][] | select(.name == "outbound-proxy") | .credentials.proxy_url')
export HTTP_PROXY=$proxy_url
export HTTPS_PROXY=$proxy_url
