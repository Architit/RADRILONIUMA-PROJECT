#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="$(basename "$ROOT")"
STATE_ROOT="${AESS_STATE_ROOT:-/tmp/aess_autostart}"
LOG_DIR="$STATE_ROOT/logs"
LOCK_DIR="$STATE_ROOT/locks"
COOLDOWN_SEC="${AESS_REPO_COOLDOWN_SEC:-300}"
STAMP_FILE="$STATE_ROOT/${NAME}.last"
LOCK_FILE="$LOCK_DIR/${NAME}.lock"

mkdir -p "$LOG_DIR" "$LOCK_DIR"
exec 9>"$LOCK_FILE"
if ! flock -n 9; then
  echo "SKIP ${NAME}: lock active"
  exit 0
fi

now="$(date +%s)"
if [[ -f "$STAMP_FILE" ]]; then
  last="$(cat "$STAMP_FILE" 2>/dev/null || echo 0)"
  if [[ "$last" =~ ^[0-9]+$ ]]; then
    delta=$(( now - last ))
    if (( delta < COOLDOWN_SEC )); then
      echo "SKIP ${NAME}: cooldown ${delta}s < ${COOLDOWN_SEC}s"
      exit 0
    fi
  fi
fi
echo "$now" > "$STAMP_FILE"

log="$LOG_DIR/${NAME}.log"
{
  echo "[$(date -Iseconds)] aess_autostart begin repo=${NAME}"
  if [[ -x "$ROOT/scripts/aess_service_start.sh" ]]; then
    echo "[$(date -Iseconds)] running scripts/aess_service_start.sh"
    "$ROOT/scripts/aess_service_start.sh"
    echo "[$(date -Iseconds)] service start script completed"
  else
    echo "[$(date -Iseconds)] NO_SERVICE_DEFINED (create scripts/aess_service_start.sh to enable runtime start)"
  fi
  echo "[$(date -Iseconds)] aess_autostart end"
} >> "$log" 2>&1

echo "OK ${NAME}: autostart contract processed"
