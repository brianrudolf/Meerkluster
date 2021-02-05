#!/bin/bash

# Exit on any error
set -e

OS_DEFINITION=$1

# Check for args
if [ -z ${OS_DEFINITION} ]; then
  echo "Usage: ./packer_build.sh OS_DEFINITION "
  echo "Exiting ..."
  exit 1
fi

echo "Building:    ${OS_DEFINITION}"

sudo packer build -on-error=ask ${OS_DEFINITION}
