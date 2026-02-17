# RESUME WAVE MONITORING DECISION CONTRACT

timestamp_utc: 2026-02-16T04:03:10Z
scope: manual resume after deadloop break pause
mode: governance resume decision
status: ACTIVE

## Decision
- resume_signal: `RESUME_WAVE_MONITORING`
- block_next_wave: FALSE
- automation_mode: RESUMED_GUARDED

## Trigger
- operator signal to continue protocol flow.

## Guard Conditions
1) dead-wave guard remains active (`M29`).
2) each new wave requires ASR + SoT sync.
3) if dead-wave is detected again, pause is re-enabled immediately.
