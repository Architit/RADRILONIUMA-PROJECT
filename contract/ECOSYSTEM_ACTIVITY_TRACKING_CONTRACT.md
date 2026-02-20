# ECOSYSTEM ACTIVITY TRACKING CONTRACT

contract_type: observability_contract
scope: active workflow/process tracking across ecosystem

## Canonical Tracking Tuple
For each active task/phase, maintain:
- state
- cycle
- cycle_window
- cycle_max
- closure_gate
- closure_decision
- latest_asr
- last_heartbeat_utc
- last_drift_gate_utc
- watchdog_state

## Update Order (mandatory)
1) DEV_LOGS.md
2) ROADMAP.md
3) GOV_STATUS.md
4) WORKFLOW_SNAPSHOT_STATE.md
5) TASK_MAP.md
6) gov/asr/INDEX.md

## No-Loop Rule
If closure_gate is OPEN, task may only transition by decision:
- COMPLETE
- BLOCKED
No additional cycle increment is allowed.

## Compatibility
Policy-only; no runtime logic; no execution-path impact.
