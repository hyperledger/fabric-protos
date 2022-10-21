#!/bin/bash
#
# Copyright the Hyperledger Fabric contributors. All rights reserved.
#
# SPDX-License-Identifier: Apache-2.0

set -x -eu -o pipefail

PROTOC_VER=1.3.2


# create temp directory to clone and build correct version of the tooling
prefix=$(basename "$0")
tempdir=$(mktemp -d -t "$prefix.XXXXXXXX") || error_exit "Error creating temporary directory"

pushd ${tempdir}
git clone -q -c advice.detachedHead=false -b v${PROTOC_VER} --depth 1 https://github.com/golang/protobuf

cd protobuf
go install ./protoc-gen-go

popd

# The up-to-date tool to use to generate the code is 
#	protoc --go_out=bindings/go --go_opt=paths=source_relative --go-grpc_out=bindings/go --go-grpc_opt=paths=source_relative "$protos"/*.proto
#
# Using tooling 'of the period' the following is used
for protos in $(find . -name '*.proto' -exec dirname {} \; | sort -u); do
    protoc "--go_out=plugins=grpc,paths=source_relative:bindings/go" "$protos"/*.proto
done

rm -Rf "$tempdir"
