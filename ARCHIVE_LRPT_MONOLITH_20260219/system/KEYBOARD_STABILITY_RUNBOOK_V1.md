# KEYBOARD STABILITY RUNBOOK V1

## Scope
Host + WSL operational checklist for keyboard freeze mitigation.

## Baseline Checks
1. Confirm active sessions are responsive.
2. Confirm no stuck modifier keys in host OS.
3. Confirm GPU/CPU load is not starving terminal focus.

## Host Recommendations (Windows)
1. Disable USB selective suspend for active keyboard path.
2. Disable Filter Keys / Sticky Keys if they interfere with long sessions.
3. Update keyboard, USB controller, and chipset drivers.
4. Prefer wired keyboard for long deterministic work sessions.

## WSL Recommendations
1. Keep shell sessions minimal (avoid excessive multiplexed overlays).
2. If freeze occurs: capture timestamp, set telemetry keyboard state DEGRADED, switch to CONTROLLED_PATH.
3. Restore to GUARDED only after manual ack + stable input heartbeat evidence.
