#!/bin/bash

export NODE_OPTIONS="--max_old_space_size=$(( MEMORY_AVAILABLE * 80 / 100 ))"

export NODE_EXTRA_CA_CERTS="/etc/cf-system-certificates/trusted-ca-1.crt"
