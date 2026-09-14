#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/bindings/python/src/fabric_protos"

PROTO_DIRS=(
  common
  discovery
  gateway
  gossip
  ledger
  msp
  orderer
  peer
  transientstore
)

PROTO_FILES=()
for proto_dir in "${PROTO_DIRS[@]}"; do
  while IFS= read -r proto_file; do
    PROTO_FILES+=("${proto_file}")
  done < <(find "${ROOT_DIR}/${proto_dir}" -type f -name '*.proto' | sort)
done

if [[ ${#PROTO_FILES[@]} -eq 0 ]]; then
  echo "No protobuf definitions found" >&2
  exit 1
fi

rm -rf "${OUT_DIR}"
mkdir -p "${OUT_DIR}"

python3 -m grpc_tools.protoc \
  -I"${ROOT_DIR}" \
  --python_out="${OUT_DIR}" \
  --grpc_python_out="${OUT_DIR}" \
  "${PROTO_FILES[@]}"

bash "${ROOT_DIR}/scripts/fix_python_imports.sh" "${OUT_DIR}"
