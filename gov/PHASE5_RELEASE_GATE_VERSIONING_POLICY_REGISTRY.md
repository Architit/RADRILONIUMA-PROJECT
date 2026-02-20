# PHASE 5 RELEASE GATE VERSIONING POLICY REGISTRY

timestamp_utc: 2026-02-16T03:36:56Z
scope: critical-contract versioning policy declaration for release-gate unblock wave w3
mode: governance declaration
status: ACTIVE

## Declaration Policy
- This registry normalizes versioning declarations for critical contracts.
- It allows mixed implementation forms (explicit semantic version vs timestamp revision),
  but requires explicit declared policy per critical contract.

## Critical Contract Versioning Declarations
| contract_id | versioning_policy |
|---|---|
| c_interaction_protocol_core | explicit_semver (`protocol_version`) |
| c_anti_samsara_deadloop | timestamp_revision |
| c_pulse_cadence_watchdog | timestamp_revision |
| c_closure_decision_sla | timestamp_revision |
| c_activity_tracking_tuple | timestamp_revision |
| c_eassr_realtime_chain | timestamp_revision |
| c_codex_cli_message_compat | runtime_profile_versioned |
| c_kernel_boundary_contract | draft_timestamp_revision_until_release_ready |
| c_research_scope_contract | draft_timestamp_revision |
| c_evidence_policy | policy_revision_declared |

## Coverage
- critical_versioning_declarations_state: COMPLETE
- noncritical_versioning_declarations_state: PARTIAL_ALLOWED
