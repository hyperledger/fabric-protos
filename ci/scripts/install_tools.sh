# Copyright the Hyperledger Fabric contributors. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

export GOBIN=/go/bin

apt-get update
apt-get install -y protobuf-compiler

pushd ci/tools
go install github.com/golang/protobuf
go install github.com/uber/prototool
popd
