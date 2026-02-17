# AESS TIMER RUNBOOK V1

## Target: Win11/WSL (TRIANIUMACORE)
This is a declarative runbook. Do not automate via DevKit. Operator must apply manually to maintain the "NO runtime logic" invariant.

### Option A: Cron (WSL)
1. Open crontab: `crontab -e`
2. Add entry (every 5 mins):
   `*/5 * * * * /bin/bash /home/architit/work/RADRILONIUMA-PROJECT/scripts/aess_autostart.sh >> /tmp/eassr_cron.log 2>&1`

### Option B: Systemd Timer (WSLg/Systemd enabled)
1. Create `aess-pulse.service` and `aess-pulse.timer` in `~/.config/systemd/user/`.
2. Enable timer: `systemctl --user enable --now aess-pulse.timer`.

**Note:** For Phase 8.3, ensure `aess_autostart.sh` is running without destructive state changes.
