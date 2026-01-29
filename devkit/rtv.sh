#!/usr/bin/env bash
set -euo pipefail

LAM_DIR="/mnt/c/Users/lkise/OneDrive/Documenten/GitHub/LAM"
RO_DIR="/home/architit/work/Roaudter-agent"

cd "$RO_DIR"
pip install -e . >/dev/null

cd "$LAM_DIR"
export TMPDIR=/tmp TEMP=/tmp TMP=/tmp
export ROAUDTER_TRACE="${ROAUDTER_TRACE:-1}"
export ROAUDTER_TRACE_ONLY="${ROAUDTER_TRACE_ONLY:-nonok}"

# -s shows prints even on success
bash scripts/lam_env.sh pytest -q -s -k "${1:-roaudter}"
