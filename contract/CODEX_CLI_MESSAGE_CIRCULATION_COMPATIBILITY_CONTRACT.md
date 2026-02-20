# CODEX CLI Message Circulation Compatibility Contract

contract_type: interoperability_governance_contract
scope: Codex CLI to internal ecosystem protocol circulation
runtime_profile: codex-cli
detected_runtime_version: 0.101.0
target_profile_note: user-declared "codex cli 5.3 open ai"

## Objective
Eliminate analysis/automation failures caused by message-style mismatch between Codex CLI I/O and internal governance protocols.

## Canonical Message Style
1) Facts-first payloads only:
- phase/task id
- action intent
- evidence target files
- expected state transition

2) Deterministic command style:
- avoid unescaped backticks/shell metacharacters in inline filters
- avoid mixed-language freeform text inside executable command strings
- prefer bounded `Action Block` with 1-3 commands

3) Observability tuple on each cycle:
- `timestamp_utc`
- `latest_asr`
- `watchdog_state`
- `last_heartbeat_utc`
- `last_drift_gate_utc`

4) Mandatory write order:
- `DEV_LOGS.md`
- `ROADMAP.md`
- `GOV_STATUS.md`
- `WORKFLOW_SNAPSHOT_STATE.md`
- `TASK_MAP.md`
- `gov/asr/INDEX.md`

## Known Failure Patterns
1) identity/runtime mapping mismatch:
- example class: `developer/cli_local/GW-AUTOPILOT` mismatch vs runtime RBAC model

2) startup-gate policy deny:
- `DENY_STARTUP` when stop-condition is met and no new activation contract exists

3) shell quoting faults in analysis commands:
- unescaped backticks causing `command not found` or malformed grep/rg filters

4) partial non-atomic pointer updates:
- timestamp and ASR references updated in subset of governance surfaces only

## Enforcement Rules (Policy-Only)
1) If runtime profile/version differs from expected profile, mark compatibility mode:
- `compatibility_mode = PROFILE_MISMATCH_TOLERANT`

2) For every analysis wave:
- run protocol scan
- register one ASR
- synchronize all governance pointers by mandatory order

3) If style-parse or quoting error is detected:
- classify as `message_circulation_style_fault`
- do not classify as protocol semantic failure until rerun with escaped command style

## Compatibility Status Fields
- codex_cli_detected_version
- codex_cli_target_profile
- codex_cli_profile_match_state
- codex_message_style_state
- codex_style_last_scan_asr

## Phase-5 Release-Gate Resolution Binding
- resolution_contract: `PHASE5_PROFILE_MISMATCH_RESOLUTION_CONTRACT.md`
- allowed release-gate posture when mismatch persists:
  `PROFILE_MISMATCH_TOLERANT_OVERRIDE` under guard conditions.

## Compatibility
Policy-only. No runtime logic. No execution-path impact.
