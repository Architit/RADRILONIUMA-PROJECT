#!/usr/bin/env bash
set -euo pipefail

# DevKit patch helper.
#
# Usage:
#   cat change.patch | devkit/patch.sh
#
# Reads a unified diff from stdin, applies it via git in a reproducible way,
# and stages the result (canonical diff).

usage() {
  cat <<'USAGE'
DevKit patch helper.

Usage:
  cat change.patch | devkit/patch.sh

Reads a unified diff from stdin, applies it via git in a reproducible way,
and stages the result.

Options:
  -h, --help   Show this help and exit.
USAGE
}

case "${1:-}" in
  -h|--help)
    usage
    exit 0
    ;;
esac

if ! command -v git >/dev/null 2>&1; then
  echo "ERROR: git not found in PATH" >&2
  exit 2
fi

# Must run inside a git worktree.
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "ERROR: not inside a git repository" >&2
  exit 2
fi

# Read patch from stdin.
if [ -t 0 ]; then
  echo "ERROR: no patch provided on stdin (pipe a .patch into devkit/patch.sh)" >&2
  echo >&2
  usage >&2
  exit 2
fi

PATCH_FILE="$(mktemp)"
trap 'rm -f "$PATCH_FILE"' EXIT

# Prime stdin: fail fast on empty non-tty stdin (e.g. </dev/null), while preserving full stream.
if ! IFS= read -r -n 1 first_char; then
  echo "ERROR: empty patch input" >&2
  exit 2
fi
printf %s "$first_char" > "$PATCH_FILE"
cat >> "$PATCH_FILE"

if [ ! -s "$PATCH_FILE" ]; then
  echo "ERROR: empty patch input" >&2
  exit 2
fi

# Apply and stage. Use 3-way merge to reduce false failures but still fail on conflicts.
git apply --index --3way "$PATCH_FILE"

echo "OK: patch applied and staged."
git diff --cached --stat
