#!/usr/bin/env bash

set -eu -o pipefail
prototool lint
cd /mnt
git clone https://github.com/FabricGDPR/fabric-protos-go.git build/fabric-protos-go
/mnt/ci/cleanup.sh build/fabric-protos-go
/mnt/ci/compile_go_protos.sh
git log -1  | tail +2 > build/fabric-protos-go/.COMMIT
cd /mnt/build/fabric-protos-go
go mod tidy
go build ./...
git diff --color