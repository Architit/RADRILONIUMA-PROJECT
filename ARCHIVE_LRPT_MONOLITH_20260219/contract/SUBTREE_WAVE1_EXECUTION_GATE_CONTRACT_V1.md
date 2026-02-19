# SUBTREE WAVE1 EXECUTION GATE CONTRACT V1

contract_type: subtree_wave1_execution_gate
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T04:01:28Z

## Purpose
- Define deterministic gate semantics for Wave-1 subtree execution.
- Transition from PREPARED remediation to target-apply execution state.

## Gate Conditions
- Preflight kit applied in each target repository.
- Target-side preflight check returns safe_for_execution=true for approved baselines.
- Governance artifacts exist and are synchronized in target repos.

## Gate States
- HOLD: prerequisites incomplete.
- READY_FOR_TARGET_APPLY: remediation artifacts prepared in source repo.
- OPEN: all target checks PASS and evidence attached.
