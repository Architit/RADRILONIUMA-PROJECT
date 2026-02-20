# INTERNAL KEY ECOSYSTEM COVERAGE MATRIX

mode: lifeflowstream
security_model: zero trust
scope: all internal ecosystem gates/channels/flows

## Identity Classes
- admin
- operator
- developer
- service_account
- machine_to_machine
- automation_scheduler

## Path Classes
- cli_local
- api_http_grpc
- message_bus_queue
- scheduler_jobs
- inter_service_channel
- inter_gateway_flow

## Gateway Inventory (fill and maintain)
- GW-CORE
- GW-CHANNEL
- GW-AUTOPILOT
- GW-GUARD
- GW-DATA
- GW-MEMORY

## Verification Matrix Template
| identity_class | path_class | gateway_id | allow_case | deny_case | key_version_ok | mfa_required | status |
|---|---|---|---|---|---|---|---|
| admin | cli_local | GW-CORE | allowed_open (mapped:admin; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | denied_change_models (mapped:admin; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | verified_key_version_v1 (asr:phase6a-security-controls-implementation-and-recheck) | yes | GREEN |
| operator | api_http_grpc | GW-CHANNEL | allowed_run (mapped:user; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | denied_install (mapped:user; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | verified_key_version_v1 (asr:phase6a-security-controls-implementation-and-recheck) | no | GREEN |
| developer | cli_local | GW-AUTOPILOT | allowed_open (mapped:user; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | denied_install (mapped:user; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | verified_key_version_v1 (asr:phase6a-security-controls-implementation-and-recheck) | no | GREEN |
| service_account | inter_service_channel | GW-DATA | allowed_run (mapped:resident; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | denied_install (mapped:resident; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | verified_key_version_v1 (asr:phase6a-security-controls-implementation-and-recheck) | no | GREEN |
| machine_to_machine | inter_gateway_flow | GW-GUARD | allowed_run (mapped:resident; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | denied_install (mapped:resident; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | verified_key_version_v1 (asr:phase6a-security-controls-implementation-and-recheck) | no | GREEN |
| automation_scheduler | scheduler_jobs | GW-MEMORY | allowed_run (mapped:resident; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | denied_install (mapped:resident; asr:phase6a-security-matrix-wave1-rbac-mapped-checks) | verified_key_version_v1 (asr:phase6a-security-controls-implementation-and-recheck) | no | GREEN |

## Wave-1 Evidence
- Allow/deny tuple probes: `phase6a-security-matrix-wave1-rbac-mapped-checks`
- Key-version + admin MFA closure: `phase6a-security-controls-implementation-and-recheck`

## Completion Rule
- Matrix is complete only when every identity/path/gateway tuple has:
  - one successful allow case,
  - one enforced deny case,
  - validated key version,
  - logged evidence reference.
