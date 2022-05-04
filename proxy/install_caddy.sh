#!/bin/bash -e

version_num=$(cat CADDY_VERSION)
download_url="https://github.com/18F/identity-idva-proxy-build/releases/download/v$version_num"
archive_name="caddy-forwardproxy-$version_num-linux-amd64.tar.gz"
shasum_filename="sha256sums.txt"

archive_url="$download_url/$archive_name"
shasum_url="$download_url/$shasum_filename"

# Download the archive and shasum file
wget --quiet "$archive_url"
wget --quiet "$shasum_url"

# Compare sha256sum
sha256sum --check --ignore-missing --status "$shasum_filename"

# Extract and clean up
tar -xzf "$archive_name"
rm "$archive_name" "$shasum_filename"
