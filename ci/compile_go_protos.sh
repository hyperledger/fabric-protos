#!/bin/bash
#
# Copyright the Hyperledger Fabric contributors. All rights reserved.
#
# SPDX-License-Identifier: Apache-2.0

set -x -eu -o pipefail

for protos in $(find . -name '*.proto' -exec dirname {} \; | sort -u); do
  protoc --go_out=bindings/go --go_opt=paths=source_relative "$protos"/*.proto
done

