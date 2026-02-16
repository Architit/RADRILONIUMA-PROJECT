# ECOSYSTEM CONTRACT STACK V2

contract_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: RADRILONIUMA ecosystem contract layer
effective_utc: 2026-02-16T05:55:10Z

## Purpose
- Establish a deterministic, auditable contract architecture across all ecosystem domains.
- Standardize contract shape, lifecycle, dependency handling, and change-control.

## Contract Layers
1) `L0_GOVERNANCE_CORE`
- Core operating constraints and interaction protocol.
- Canonical: `INTERACTION_PROTOCOL.md`.

2) `L1_RUNTIME_AND_FLOW`
- Anti-loop, heartbeat, closure-SLA, realtime orchestration contracts.
- Canonical examples:
  - `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md`
  - `AUTOPILOT_PULSE_CADENCE_AND_WATCHDOG_PROTOCOL.md`
  - `ECOSYSTEM_CLOSURE_DECISION_SLA_PROTOCOL.md`
  - `ECOSYSTEM_HEALTHCHECK_HEARTBEAT_PULSE_BREATH_RECOVERY_REBOOT_PROTOCOL.md`

3) `L2_SECURITY_AND_IDENTITY`
- Identity/key controls and coverage matrices.
- Canonical examples:
  - `INTERNAL_KEY_ECOSYSTEM_COVERAGE_MATRIX.md`
  - `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md`

4) `L3_RELEASE_AND_MIGRATION`
- Release gates, unblock waves, migration and compatibility contracts.
- Canonical examples:
  - `PHASE5_RELEASE_GATE_EXECUTION_DECISION_CONTRACT.md`
  - `PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_WAVE_PROTOCOL.md`
  - `MIGRATION_PLAN.md`
  - `COMPATIBILITY_MATRIX.md`

5) `L4_POLICY_AND_DISCLOSURE_BINDING`
- Policy binding contracts that constrain contract execution decisions.
- Canonical examples:
  - `ECOSYSTEM_POLICY_STACK_V2.md`
  - `EVIDENCE_POLICY.md`

## Contract Metadata Standard (mandatory)
Every new/reworked contract must include:
- `version` (semantic or declared policy version),
- `status` (`DRAFT|ACTIVE|DEPRECATED|BLOCKED`),
- `scope`,
- `owner_role` (explicit role, not a personal identifier),
- `effective_utc`,
- `dependencies` (direct contract links),
- `validation_surface` (where evidence is verified),
- `failure_mode` and `recovery_path`.

## Contract Lifecycle
`PROPOSED -> DRAFT -> REVIEWED -> ACTIVE -> SUPERSEDED/DEPRECATED`

Lifecycle requirements:
- Promotion to `ACTIVE` requires ASR evidence and SoT synchronization.
- `SUPERSEDED` contracts must point to replacement artifact and migration note.
- `DEPRECATED` contracts must retain read-only historical trace.

## Contract Dependency Rules
- A contract may depend only on equal or lower layer contracts unless explicit escalation is documented.
- Circular dependencies are disallowed.
- Dependency changes require impact classification:
  - `IC_LOW`, `IC_MEDIUM`, `IC_HIGH`, `IC_CRITICAL`.

## Change Control
- Any high-impact contract change must include:
  - compatibility note,
  - rollback decision path,
  - evidence of validation hook execution.
- No silent contract mutation is allowed.

## Validation Gates
- `GATE_SCHEMA`: metadata completeness and schema compliance.
- `GATE_DEPENDENCY`: dependency integrity and no circularity.
- `GATE_EVIDENCE`: evidence grade sufficient for decision class.
- `GATE_SYNC`: SoT write-order synchronization completed.

## Violation Taxonomy
- `V_SCHEMA_MISSING`
- `V_DEPENDENCY_CONFLICT`
- `V_EVIDENCE_WEAK`
- `V_SYNC_DRIFT`
- `V_UNDECLARED_BREAKING_CHANGE`

## Remediation Contract
For any violation:
1) open remediation record,
2) classify violation and impact,
3) apply minimal deterministic correction,
4) re-run required gates,
5) close with ASR evidence.

## Binding
- This document is the canonical architecture for ecosystem contracts.
- Details are implemented through concrete artifacts listed in `CONTRACT_ATLAS.md`.
