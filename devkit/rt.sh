#!/usr/bin/env bash
set -euo pipefail

LAM_DIR="/mnt/c/Users/lkise/OneDrive/Documenten/GitHub/LAM"
RO_DIR="/home/architit/work/Roaudter-agent"

# ensure router agent is editable-installed (no-op if already)
cd "$RO_DIR"
pip install -e . >/dev/null

# run tests from LAM using LAM env wrapper
cd "$LAM_DIR"
export TMPDIR=/tmp TEMP=/tmp TMP=/tmp
bash scripts/lam_env.sh pytest -q -k "${1:-roaudter}"
