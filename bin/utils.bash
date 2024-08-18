#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/zephyrproject-rtos/zephyr"
TOOL_NAME="zephyr"

list_all_versions() {
  git ls-remote --tags --refs $GH_REPO \
    | grep -o 'refs/tags/.*' \
    | cut -d/ -f3- \
    | grep -v '^zephyr' \
    | grep -v '-' \
    | sed 's/^v//' \
    | sort -V \
    | xargs echo
}
