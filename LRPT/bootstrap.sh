#!/usr/bin/env bash
set -euo pipefail

REPO="${1:-$(pwd)}"
cd "$REPO"

if [[ ! -d ".venv" ]]; then
  python3 -m venv .venv
fi

PY="$REPO/.venv/bin/python"
PIP="$REPO/.venv/bin/pip"

"$PY" -m pip install -U pip

if [[ -f "requirements-dev.txt" ]]; then
  "$PIP" install -r requirements-dev.txt
elif [[ -f "requirements.txt" ]]; then
  "$PIP" install -r requirements.txt
elif [[ -f "pyproject.toml" ]]; then
  "$PIP" install -e .
elif [[ -f "LRPT/healing_tools/requirements-dev-healed.txt" ]]; then
  "$PIP" install -r LRPT/healing_tools/requirements-dev-healed.txt
elif [[ -f "healing_tools/requirements-dev-healed.txt" ]]; then
  "$PIP" install -r healing_tools/requirements-dev-healed.txt
else
  echo "[devkit] WARN: no requirements*.txt or pyproject.toml found"
fi

echo "[devkit] OK: $PY"
