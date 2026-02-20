# MODULE CATALOG

status: REWORKED_V2
generated_utc: 2026-02-16T06:06:10Z
mode: module-governance detailed catalog

## Canonical Binding
- module_stack_topology: `ECOSYSTEM_MODULE_STACK_V2.md`
- interface_matrix: `MODULE_INTERFACE_MATRIX_V2.md`
- dependency_map: `MODULE_DEPENDENCY_MAP_V2.md`
- governance_protocol: `INTERACTION_PROTOCOL.md`

## Ecosystem Modules (V2)
| module_id | layer | module_name | boundary | owner_role | status | primary_surfaces |
|---|---|---|---|---|---|---|
| MOD-GOV-CORE | ML0_GOVERNANCE_CORE | Governance Core | protocol + SoT orchestration | governance_maintainer | ACTIVE | `INTERACTION_PROTOCOL.md`, `GOV_STATUS.md` |
| MOD-CONTRACT-GOV | ML0_GOVERNANCE_CORE | Contract Governance | contract architecture and activation gates | contract_maintainer | ACTIVE | `CONTRACT_ATLAS.md`, `ECOSYSTEM_CONTRACT_STACK_V2.md` |
| MOD-POLICY-GOV | ML0_GOVERNANCE_CORE | Policy Governance | policy topology and conflict semantics | policy_maintainer | ACTIVE | `ECOSYSTEM_POLICY_STACK_V2.md`, `EVIDENCE_POLICY.md` |
| MOD-MODULE-GOV | ML0_GOVERNANCE_CORE | Module Governance | module boundaries/interfaces/dependencies | module_architect | ACTIVE | `MODULE_CATALOG.md`, `MODULE_INTERFACE_MATRIX_V2.md` |
| MOD-SECURITY-IDENTITY | ML2_SECURITY_AND_CONTROL | Security & Identity | identity and key controls | security_operator | ACTIVE | `INTERNAL_KEY_ECOSYSTEM_COVERAGE_MATRIX.md`, `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md` |
| MOD-ARCHIVE | ML3_MEMORY_AND_ARCHIVE | Archive & Evidence | ASR evidence and long-tail trace | archive_operator | ACTIVE | `gov/asr/sessions/*`, `gov/asr/INDEX.md` |
| MOD-RELEASE-GATE | ML4_RELEASE_AND_MIGRATION | Release Gate | release decision and wave checkpoints | release_owner | ACTIVE | `PHASE5_RELEASE_GATE_EXECUTION_DECISION_CONTRACT.md`, `RELEASE_GATE_EXECUTION_READINESS_CHECKPOINT.md` |
| MOD-MIGRATION | ML4_RELEASE_AND_MIGRATION | Migration Control | migration and compatibility flow | migration_owner | ACTIVE | `MIGRATION_PLAN.md`, `COMPATIBILITY_MATRIX.md` |
| MOD-DEADLOOP-GUARD | ML1_ORCHESTRATION_AND_FLOW | Deadloop Guard | dead-wave detection and control | flow_guard_owner | ACTIVE | `DEAD_WAVE_FLOW_LOOP_PROTOCOL.md`, `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md` |
| MOD-OBSERVABILITY | ML1_ORCHESTRATION_AND_FLOW | Observability & Snapshot | state synchronization and trace | observability_owner | ACTIVE | `WORKFLOW_SNAPSHOT_STATE.md`, `DEV_LOGS.md`, `ROADMAP.md`, `TASK_MAP.md` |

## Legacy Repo-Level Candidates (Historical)
- `RADRILONIUMA-PROJECT`
- `LAM`
- `LAM-Codex_Agent`
- `LAM_Comunication_Agent`
- `LAM_DATA_Src`
- `LAM_Test_Agent`
- `Roaudter-agent`
- `Archivator_Agent`
- `CORE / CORE_RECLONE_CLEAN`
- `Operator_Agent`
- `J.A.R.V.I.S`
- `System-`
- `Trianiuma / Trianiuma_MEM_CORE / TRIANIUMA_DATA_BASE`

## Boundary Invariants
- Every module must map to declared layer and interface class.
- Cross-module flows must exist in `MODULE_INTERFACE_MATRIX_V2.md`.
- Dependencies must exist in `MODULE_DEPENDENCY_MAP_V2.md`.
- Undefined boundary is `MV_BOUNDARY_MISSING`.
