# MIGRATION PLAN

status: DRAFT
generated_utc: 2026-02-16T02:42:27Z
scope: phase-4 migration strategy for kernel vNext
kernel_target: RADRILONIUMA-PROJECT@main
mode: contracts-first, observability-first, derivation-only

## Objective
Define controlled migration sequence from current governance baseline to kernel vNext contract set.

## Inputs
- `KERNEL_BOUNDARY_CONTRACT.md`
- `COMPATIBILITY_MATRIX.md`
- `CONTRACT_ATLAS.md`
- `REPO_MANIFEST.yaml`
- `SUBMODULES_LOCK.md`
- `SUBTREES_LOCK.md`

## Migration Waves (proposed)
1) Wave A — SoT contract stabilization:
- normalize contract IDs and key fields in `CONTRACT_ATLAS.md`
- freeze kernel boundary deltas in `KERNEL_BOUNDARY_CONTRACT.md`
- classify changes via `COMPATIBILITY_MATRIX.md` (`cm1..cm8`)

2) Wave B — compatibility gate rollout:
- enforce change-class tagging in ASR for each migration delta
- block class `cm3/cm4/cm5/cm7/cm8` without explicit break window decision
- run parser-impact review for strict consumer surfaces

3) Wave C — downstream impact mapping:
- map SoT contract deltas to downstream repos in `REPO_MANIFEST.yaml`
- classify each downstream repo as `no_impact/low/medium/high`
- bind required adaptation contracts for `high` impact surfaces

4) Wave D — release gate + rollback:
- evaluate vNext release gate checklist
- declare launch decision (`OPEN`/`BLOCKED`) with ASR
- predefine rollback package and rollback trigger conditions

## Change Control Mapping
| change_class | migration_treatment | default_decision |
|---|---|---|
| `cm1`, `cm2` | fast-track with ASR and sync | ALLOW |
| `cm6` | allow with fallback declaration | ALLOW_WITH_CONDITION |
| `cm3`, `cm4`, `cm7`, `cm8` | break-window + migration note + explicit decision ASR | BLOCK_UNTIL_APPROVED |
| `cm5` | SLA review + staged rollout | BLOCK_UNTIL_SLA_APPROVED |

## Release Gates
1) `gate_contract_integrity`:
- all required contracts present and linked in SoT
2) `gate_compatibility_decisions`:
- all breaking/conditional-breaking changes have explicit decisions
3) `gate_downstream_impact`:
- high-impact downstream adaptations either completed or explicitly blocked
4) `gate_observability_sync`:
- maps/logs/status/snapshot/task/index synchronized and evidence-linked

## Rollback Strategy
- rollback_unit: one migration wave
- rollback_condition:
  - compatibility gate violation
  - unresolved high-impact downstream break
  - observability sync failure
- rollback_action:
  - restore prior contract pointers
  - register rollback ASR
  - set migration gate to `BLOCKED_PENDING_REVIEW`

## Pending Decisions
- breaking window policy: DECIDED_FINAL (`BREAK_WINDOW_AND_DOWNSTREAM_ORDER_DECISION_CONTRACT.md`)
- downstream repo migration ordering: DECIDED_FINAL (`BREAK_WINDOW_AND_DOWNSTREAM_ORDER_DECISION_CONTRACT.md`)
- final release tagging policy: DECIDED_FINAL (`RELEASE_TAGGING_AND_HIGH_IMPACT_THRESHOLD_DECISION_CONTRACT.md`)
- downstream high-impact threshold criteria: DECIDED_FINAL (`RELEASE_TAGGING_AND_HIGH_IMPACT_THRESHOLD_DECISION_CONTRACT.md`)
- phase-5 release gate execution decision: BLOCKED_PENDING_REVIEW (`PHASE5_RELEASE_GATE_EXECUTION_DECISION_CONTRACT.md`)
- phase-5 unblock evidence wave: ACTIVE (`PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_WAVE_PROTOCOL.md`)
- phase-5 unblock evidence baseline map: CAPTURED (`PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_MAP.md`)
- phase-5 owner declaration registry: ACTIVE (`PHASE5_RELEASE_GATE_OWNER_DECLARATION_REGISTRY.md`)
- phase-5 versioning policy registry: ACTIVE (`PHASE5_RELEASE_GATE_VERSIONING_POLICY_REGISTRY.md`)
- phase-5 profile mismatch resolution: DECIDED (`PHASE5_PROFILE_MISMATCH_RESOLUTION_CONTRACT.md`)
- phase-5 kernel boundary promotion decision: DECIDED (`PHASE5_KERNEL_BOUNDARY_PROMOTION_DECISION_CONTRACT.md`)
- phase-5 release-gate redecision (historical): BLOCKED_PENDING_FINALIZATION (`PHASE5_RELEASE_GATE_REDECISION_CONTRACT.md`)
- phase-5 provisional decisions finalization: DECIDED_FINAL (`PHASE5_PROVISIONAL_DECISIONS_FINALIZATION_CONTRACT.md`)
- phase-5 release-gate post-finalization redecision: OPEN (`PHASE5_RELEASE_GATE_REDECISION_POST_FINALIZATION_CONTRACT.md`)
- release-gate execution readiness checkpoint: GREEN (`RELEASE_GATE_EXECUTION_READINESS_CHECKPOINT.md`)
- release execution monitored wave-1: GREEN (`RELEASE_EXECUTION_LAUNCH_CHECKLIST.md`)
- release execution monitored wave-2: GREEN (`RELEASE_EXECUTION_WAVE2_CHECKPOINT.md`)
- release execution monitored wave-3: GREEN (`RELEASE_EXECUTION_WAVE3_CHECKPOINT.md`)
- release execution monitored wave-4: GREEN (`RELEASE_EXECUTION_WAVE4_CHECKPOINT.md`)
- release execution monitored wave-5: GREEN (`RELEASE_EXECUTION_WAVE5_CHECKPOINT.md`)
- dead-wave flow loop guard: ACTIVE (`DEAD_WAVE_FLOW_LOOP_PROTOCOL.md`)
- dead-wave flow loop guard checkpoint wave-1: GREEN (`DEAD_WAVE_FLOW_LOOP_GUARD_CHECKPOINT.md`)
- dead-wave flow loop guard checkpoint wave-2: GREEN (`DEAD_WAVE_FLOW_LOOP_GUARD_CHECKPOINT_WAVE2.md`)
- deadloop break decision: ACTIVE (`DEADLOOP_BREAK_DECISION_CONTRACT.md`)
- resume wave monitoring decision: ACTIVE (`RESUME_WAVE_MONITORING_DECISION_CONTRACT.md`)
