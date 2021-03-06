#!/usr/bin/env bash

set -e

# shellcheck disable=SC1090,SC1091
source "$SECRETS_PROJECT_ROOT/utils/build-utils.sh"

# Copying all the required files to the build directory:
preinstall_files '-c'

# Building .rpm package:
cd "$SCRIPT_DEST_DIR" && build_package 'rpm'

# Cleaning up:
clean_up_files
