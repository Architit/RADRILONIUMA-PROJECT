# ASR — Phase 6.A Security Matrix Wave-1 Execution Attempt

timestamp_utc: 2026-02-14T14:56:07Z
scope: wave-1 tuple execution attempt with facts-only authz evidence capture
source_of_truth: RADRILONIUMA-PROJECT
protocol_version: v1.0.0

## Objective
- Execute first tuple-level allow/deny checks where runnable authz logic exists.
- Convert at least one bootstrap tuple from abstract markers to concrete evidence.

## Facts Collected
- Gateway IDs (`GW-*`) are defined only in governance artifacts (matrix + ASR); no runtime component declares these IDs directly.
- Runnable authz logic found at:
  - `Trianiuma_MEM_CORE/RAM_MEM/Sys/autopilot_package/service/rbac.py`
- RBAC role model in code:
  - `admin, avatar, creator, guest, resident, user`
- Matrix identity model:
  - `admin, operator, developer, service_account, machine_to_machine, automation_scheduler`

## Execution Evidence
- Command executed:
  - instantiate `RBAC` from `service/rbac.py`
  - run `check_allowed(identity, action={open,run,install})` for all matrix identities
- Result snapshot:
  - `admin|open|allowed=True`
  - `developer|open|allowed=False|reason=unknown role`
  - `operator|open|allowed=False|reason=unknown role`
  - `service_account|open|allowed=False|reason=unknown role`
  - `machine_to_machine|open|allowed=False|reason=unknown role`
  - `automation_scheduler|open|allowed=False|reason=unknown role`

## Tuple Update Applied
- tuple: `developer / cli_local / GW-AUTOPILOT`
- allow_case: still not executed (no `developer` role mapping in RBAC)
- deny_case: captured (unknown role denied)
- key_version_ok: not verified
- status: YELLOW (partial evidence only)

## Result
- wave1_execution_attempt: PARTIAL
- explicit_blocker: identity model mismatch between matrix and RBAC implementation.
- next_step: define canonical identity mapping contract (`developer/operator/...` -> runtime roles) and re-run tuple allow/deny checks.
