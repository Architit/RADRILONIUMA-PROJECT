# GOVERNANCE GATE MATRIX V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T06:34:10Z
scope: ecosystem governance gates and transition controls

## Gate Matrix
| gate_id | scope | preconditions | allow_state | block_state | evidence_required | owner_role |
|---|---|---|---|---|---|---|
| GGATE_PROTOCOL | protocol layer | protocol sync + constraints intact | GREEN_ALLOW | RED_BLOCK | protocol pointer + ASR | governance_maintainer |
| GGATE_DECISION | decision lifecycle | decision fields complete | GREEN_ALLOW | BLOCKED_PENDING_GOVERNANCE_DECISION | decision bundle + ASR | governance_operator |
| GGATE_EVIDENCE | evidence quality | evidence grade threshold met | GREEN_ALLOW | RED_BLOCK | E2/E3 grade evidence | governance_operator |
| GGATE_SYNC | SoT sync order | write-order completed | GREEN_ALLOW | RED_BLOCK | synchronized pointers | governance_operator |
| GGATE_RELEASE | release controls | release contract gates satisfied | GREEN_ALLOW | RED_BLOCK | release checkpoints + ASR | release_owner |
| GGATE_RECOVERY | recovery controls | remediation path declared | GREEN_ALLOW | YELLOW_REVIEW | remediation evidence | recovery_owner |

## Transition Rules
- Gate transitions require timestamped status update in `GOV_STATUS.md`.
- Any `RED_BLOCK` or `BLOCKED_PENDING_GOVERNANCE_DECISION` requires remediation task opening in `TASK_MAP.md`.
- Gate closure requires ASR index entry.

## Violation Mapping
- `GV_MISSING_GATE_STATE` -> `GGATE_DECISION: BLOCKED_PENDING_GOVERNANCE_DECISION`
- `GV_WEAK_EVIDENCE` -> `GGATE_EVIDENCE: RED_BLOCK`
- `GV_STATE_POINTER_DRIFT` -> `GGATE_SYNC: RED_BLOCK`
- `GV_UNDECLARED_BREAKING_DECISION` -> `GGATE_PROTOCOL: RED_BLOCK`
