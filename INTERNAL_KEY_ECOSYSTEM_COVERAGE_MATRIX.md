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
| admin | cli_local | GW-CORE | pending | pending | pending | yes | pending |
| operator | api_http_grpc | GW-CHANNEL | pending | pending | pending | no | pending |
| developer | cli_local | GW-AUTOPILOT | pending | pending | pending | no | pending |
| service_account | inter_service_channel | GW-DATA | pending | pending | pending | no | pending |
| machine_to_machine | inter_gateway_flow | GW-GUARD | pending | pending | pending | no | pending |
| automation_scheduler | scheduler_jobs | GW-MEMORY | pending | pending | pending | no | pending |

## Completion Rule
- Matrix is complete only when every identity/path/gateway tuple has:
  - one successful allow case,
  - one enforced deny case,
  - validated key version,
  - logged evidence reference.
