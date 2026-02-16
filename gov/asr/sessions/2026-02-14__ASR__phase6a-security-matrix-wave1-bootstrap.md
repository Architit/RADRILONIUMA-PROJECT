# ASR — Phase 6.A Security Matrix Wave-1 Bootstrap

timestamp_utc: 2026-02-14T15:00:00Z
scope: wave-1 bootstrap normalization for security coverage matrix rows
source_of_truth: RADRILONIUMA-PROJECT
protocol_version: v1.0.0

## Objective
- Convert matrix rows from abstract `pending` to explicit facts-only bootstrap state.
- Attach logged evidence reference for each tuple before full allow/deny execution.

## Facts
- Wave-1 executable infra prerequisites are present:
  - repository hygiene: 18/18 clean (see `phase6a-security-matrix-readiness-checkpoint`)
  - CAB mounts: `/mnt/c`, `/mnt/a`, `/mnt/b` present
- No tuple-level allow/deny/key-version execution evidence is captured yet.

## Tuple Bootstrap Status (facts-only)
- admin / cli_local / GW-CORE: allow=not_executed, deny=not_executed, key_version=not_verified, status=YELLOW
- operator / api_http_grpc / GW-CHANNEL: allow=not_executed, deny=not_executed, key_version=not_verified, status=YELLOW
- developer / cli_local / GW-AUTOPILOT: allow=not_executed, deny=not_executed, key_version=not_verified, status=YELLOW
- service_account / inter_service_channel / GW-DATA: allow=not_executed, deny=not_executed, key_version=not_verified, status=YELLOW
- machine_to_machine / inter_gateway_flow / GW-GUARD: allow=not_executed, deny=not_executed, key_version=not_verified, status=YELLOW
- automation_scheduler / scheduler_jobs / GW-MEMORY: allow=not_executed, deny=not_executed, key_version=not_verified, status=YELLOW

## Result
- matrix_wave1_bootstrap: APPLIED
- protocol_health_state: YELLOW
- blockers: 0 infrastructure blockers
- next_step: execute tuple-level positive/negative tests and replace bootstrap markers with real allow/deny evidence IDs.
