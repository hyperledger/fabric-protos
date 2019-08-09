#!/bin/bash
#
# Copyright the Hyperledger Fabric contributors. All rights reserved.
#
# SPDX-License-Identifier: Apache-2.0

set -eu -o pipefail

# remove all files that are tracked by git and not whitelisted
cleanup() {
  git ls-files | grep -vFx -f <(grep -v '^#' < .whitelist) | tr '\n' '\0' | xargs -0 rm -f
  find ./* -type d -empty -delete
}

proto_repo=${1:-build}

echo Cleaning up "$proto_repo"
cd "${proto_repo}" && cleanup
