#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0

"""Rewrite generated protobuf imports to use fabric_protos package prefix."""

from __future__ import annotations

import re
import sys
from pathlib import Path

FROM_IMPORT = re.compile(
    r"^from (?P<module>[a-zA-Z0-9_\.]+) import (?P<name>[a-zA-Z0-9_]+) as (?P<alias>[a-zA-Z0-9_]+)$"
)
PLAIN_IMPORT = re.compile(
    r"^import (?P<module>[a-zA-Z0-9_\.]+) as (?P<alias>[a-zA-Z0-9_]+)$"
)


def should_prefix(module_name: str) -> bool:
    return not module_name.startswith("google.") and not module_name.startswith("fabric_protos.")


def rewrite_line(line: str) -> str:
    raw = line.rstrip("\n")

    from_match = FROM_IMPORT.match(raw)
    if from_match:
        module_name = from_match.group("module")
        if should_prefix(module_name):
            return (
                f"from fabric_protos.{module_name} "
                f"import {from_match.group('name')} as {from_match.group('alias')}\n"
            )
        return line

    plain_match = PLAIN_IMPORT.match(raw)
    if plain_match:
        module_name = plain_match.group("module")
        if should_prefix(module_name):
            return f"import fabric_protos.{module_name} as {plain_match.group('alias')}\n"
        return line

    return line


def ensure_package_markers(root_dir: Path) -> None:
    root_marker = root_dir / "__init__.py"
    if not root_marker.exists():
        root_marker.write_text(
            "# SPDX-License-Identifier: Apache-2.0\n\n"
            "\"\"\"Python bindings for Hyperledger Fabric protobuf definitions.\"\"\"\n",
            encoding="utf-8",
        )

    for directory in root_dir.rglob("*"):
        if directory.is_dir():
            marker = directory / "__init__.py"
            if not marker.exists():
                marker.write_text("# SPDX-License-Identifier: Apache-2.0\n", encoding="utf-8")


def rewrite_tree(root_dir: Path) -> None:
    for py_file in root_dir.rglob("*.py"):
        if py_file.name == "__init__.py":
            continue

        original = py_file.read_text(encoding="utf-8")
        rewritten = "".join(rewrite_line(line) for line in original.splitlines(keepends=True))
        if rewritten != original:
            py_file.write_text(rewritten, encoding="utf-8")


def main() -> int:
    if len(sys.argv) != 2:
        print("Usage: fix_python_imports.py <generated_python_root>", file=sys.stderr)
        return 2

    root = Path(sys.argv[1]).resolve()
    if not root.exists() or not root.is_dir():
        print(f"Invalid directory: {root}", file=sys.stderr)
        return 2

    ensure_package_markers(root)
    rewrite_tree(root)

    py_typed = root / "py.typed"
    if not py_typed.exists():
        py_typed.write_text("", encoding="utf-8")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
