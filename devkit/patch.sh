#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  cat <<'USAGE'
DevKit patch helper.

Usage:
  cat change.patch | devkit/patch.sh
  devkit/patch.sh --file <path>

Reads a unified diff, applies it via git in a reproducible way,
and stages the result.
USAGE
  exit 0
fi

exec "$ROOT_DIR/LRPT/patch.sh" "$@"
