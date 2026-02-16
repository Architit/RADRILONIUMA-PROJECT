# ASR — Phase 6.A Security Matrix Wave-1 RBAC Mapped Checks

timestamp_utc: 2026-02-14T14:58:46Z
scope: tuple-level allow/deny checks using deterministic identity->runtime role mapping
source_of_truth: RADRILONIUMA-PROJECT
protocol_version: v1.0.0

## Objective
- Execute Wave-1 allow/deny checks for all 6 canonical tuples.
- Resolve identity-model mismatch blocker via explicit mapping contract.

## Mapping Contract
- artifact: `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md`
- mapping used:
  - admin -> admin
  - operator -> user
  - developer -> user
  - service_account -> resident
  - machine_to_machine -> resident
  - automation_scheduler -> resident

## Runtime Evidence Source
- module: `Trianiuma_MEM_CORE/RAM_MEM/Sys/autopilot_package/service/rbac.py`
- method: `RBAC.check_allowed(role, action, params)`

## Execution Results (facts-only)
- admin / cli_local / GW-CORE:
  - allow probe: role=admin action=open -> allowed=True
  - deny probe: role=admin action=change_models -> allowed=False reason="action not allowed for role"
- operator / api_http_grpc / GW-CHANNEL:
  - allow probe: role=user action=run -> allowed=True
  - deny probe: role=user action=install -> allowed=False reason="action not allowed for role"
- developer / cli_local / GW-AUTOPILOT:
  - allow probe: role=user action=open -> allowed=True
  - deny probe: role=user action=install -> allowed=False reason="action not allowed for role"
- service_account / inter_service_channel / GW-DATA:
  - allow probe: role=resident action=run -> allowed=True
  - deny probe: role=resident action=install -> allowed=False reason="action not allowed for role"
- machine_to_machine / inter_gateway_flow / GW-GUARD:
  - allow probe: role=resident action=run -> allowed=True
  - deny probe: role=resident action=install -> allowed=False reason="action not allowed for role"
- automation_scheduler / scheduler_jobs / GW-MEMORY:
  - allow probe: role=resident action=run -> allowed=True
  - deny probe: role=resident action=install -> allowed=False reason="action not allowed for role"

## Result
- wave1_rbac_mapped_checks: COMPLETE
- tuple_allow_deny_evidence: 6/6 captured
- remaining_gaps:
  - key_version validation not captured (all tuples)
  - MFA evidence not captured for admin tuple
- protocol_health_state: YELLOW
