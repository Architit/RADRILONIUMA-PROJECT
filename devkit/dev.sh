#!/usr/bin/env bash
set -euo pipefail
ROOT_LAM="/mnt/c/Users/lkise/OneDrive/Documenten/GitHub/LAM"
export TMPDIR=/tmp TEMP=/tmp TMP=/tmp
bash "$ROOT_LAM/scripts/lam_env.sh" "$@"
