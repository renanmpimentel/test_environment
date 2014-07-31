#!/usr/bin/env bash

set -e

if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

yum update -y
yum groupinstall "Development Tools" -y