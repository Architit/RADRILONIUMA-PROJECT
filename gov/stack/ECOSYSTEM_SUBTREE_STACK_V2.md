# ECOSYSTEM SUBTREE STACK V2

subtree_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: ecosystem subtree governance and lifecycle control
effective_utc: 2026-02-16T07:02:10Z

## Purpose
- Define canonical subtree lifecycle for import, sync, split, rollback, and lock updates.
- Remove ambiguity between logical subtree domains and physical git subtree operations.
- Enforce deterministic subtree governance across SoT and downstream repositories.

## Subtree Layers
1) `STL0_TOPOLOGY_AND_SCOPE`
- canonical scope and domain registration for subtree surfaces.
- artifacts:
  - `SUBTREE_STRATEGY.md`
  - `ARCKHANGEL_GUARDDOG_HEAL_AGENT_LRPT_TASPIT_SUBTREE_DOMAIN_CONTRACT.md`

2) `STL1_LOCK_AND_STATE`
- authoritative subtree lock and state views.
- artifacts:
  - `SUBTREES_LOCK.md`
  - `GOV_STATUS.md`

3) `STL2_DECISION_AND_CONTROL`
- deterministic decision lifecycle and transition controls.
- artifacts:
  - `SUBTREE_DECISION_PROTOCOL_V2.md`
  - `SUBTREE_GATE_MATRIX_V2.md`

4) `STL3_EXECUTION_AND_EVIDENCE`
- subtree operation traceability and evidence index.
- artifacts:
  - `DEV_LOGS.md`
  - `ROADMAP.md`
  - `gov/asr/INDEX.md`

5) `STL4_ATPLT_DEBUG_AND_DEVKIT`
- deterministic debug/remediation lifecycle for subtree-impacting command failures.
- artifacts:
  - `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`
  - `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`
  - `devkit/shell_preflight_check.py`

## Subtree Invariants
- No subtree import/sync without gate state.
- No subtree lock change without evidence tuple.
- No cross-repo subtree rollout without upstream/downstream order declaration.
- No subtree closure without SoT status-pointer synchronization.

## Binding
- Decision model: `SUBTREE_DECISION_PROTOCOL_V2.md`.
- Gate model: `SUBTREE_GATE_MATRIX_V2.md`.
- Debug model: `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`.
