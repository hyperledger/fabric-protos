#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

usage() {
  echo "Usage: $(basename "$0") <generated_python_root>" >&2
}

should_prefix() {
  local module_name=${1:?}
  [[ "${module_name}" != google.* && "${module_name}" != fabric_protos.* ]]
}

rewrite_file() {
  local file_path=${1:?}
  local tmp_file
  tmp_file="$(mktemp)"

  while IFS= read -r line || [[ -n "${line}" ]]; do
    if [[ "${line}" =~ ^from[[:space:]]+([A-Za-z0-9_.]+)[[:space:]]+import[[:space:]]+([A-Za-z0-9_]+)[[:space:]]+as[[:space:]]+([A-Za-z0-9_]+)$ ]]; then
      local module_name=${BASH_REMATCH[1]}
      if should_prefix "${module_name}"; then
        printf 'from fabric_protos.%s import %s as %s\n' "${module_name}" "${BASH_REMATCH[2]}" "${BASH_REMATCH[3]}" >> "${tmp_file}"
        continue
      fi
    elif [[ "${line}" =~ ^import[[:space:]]+([A-Za-z0-9_.]+)[[:space:]]+as[[:space:]]+([A-Za-z0-9_]+)$ ]]; then
      local module_name=${BASH_REMATCH[1]}
      if should_prefix "${module_name}"; then
        printf 'import fabric_protos.%s as %s\n' "${module_name}" "${BASH_REMATCH[2]}" >> "${tmp_file}"
        continue
      fi
    fi

    printf '%s\n' "${line}" >> "${tmp_file}"
  done < "${file_path}"

  if ! cmp -s "${file_path}" "${tmp_file}"; then
    mv "${tmp_file}" "${file_path}"
  else
    rm -f "${tmp_file}"
  fi
}

if [[ $# -ne 1 ]]; then
  usage
  exit 2
fi

ROOT_DIR=${1:?}
if [[ ! -d "${ROOT_DIR}" ]]; then
  echo "Invalid directory: ${ROOT_DIR}" >&2
  exit 2
fi
ROOT_DIR="$(cd "${ROOT_DIR}" && pwd)"

ROOT_MARKER="${ROOT_DIR}/__init__.py"
if [[ ! -f "${ROOT_MARKER}" ]]; then
  cat > "${ROOT_MARKER}" <<'EOF'
# SPDX-License-Identifier: Apache-2.0

"""Python bindings for Hyperledger Fabric protobuf definitions."""
EOF
fi

while IFS= read -r -d '' directory; do
  marker="${directory}/__init__.py"
  if [[ ! -f "${marker}" ]]; then
    printf '%s\n' '# SPDX-License-Identifier: Apache-2.0' > "${marker}"
  fi
done < <(find "${ROOT_DIR}" -type d -print0)

while IFS= read -r -d '' py_file; do
  rewrite_file "${py_file}"
done < <(find "${ROOT_DIR}" -type f -name '*.py' ! -name '__init__.py' -print0)

if [[ ! -f "${ROOT_DIR}/py.typed" ]]; then
  : > "${ROOT_DIR}/py.typed"
fi