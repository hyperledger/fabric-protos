#!/bin/bash
#
# Copyright the Hyperledger Fabric contributors. All rights reserved.
#
# SPDX-License-Identifier: Apache-2.0

set -eu -o pipefail

sudo apt-get update
sudo apt-get install -y git protobuf-compiler

GO111MODULE=on go get "github.com/golang/protobuf/protoc-gen-go@v${protoc_ver}"
GO111MODULE=on go get "github.com/uber/prototool/cmd/prototool@v${prototool_ver}"
