#!/usr/bin/env bash

set -eu -o pipefail
prototool lint
cd /mnt
git clone https://github.com/FabricGDPR/fabric-protos-go.git build/fabric-protos-go
./ci/cleanup_generated.sh build/fabric-protos-go
./ci/compile_go_protos.sh

cd build/fabric-protos-go
go mod tidy
go build ./...
git diff --color
