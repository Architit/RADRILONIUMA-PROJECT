# ECOSYSTEM INTERFACE STACK V2

interface_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: RADRILONIUMA ecosystem interface architecture
effective_utc: 2026-02-16T08:18:10Z

## Purpose
- Define canonical interface layers across operator, agent, system, and governance surfaces.
- Standardize interface contracts, compatibility rules, and transition gates.

## Interface Layers
1) `IL0_GOVERNANCE_INTERFACE`
- Governance-control interface surfaces and protocol gates.

2) `IL1_OPERATOR_AND_UI_INTERFACE`
- Operator prompts, UI map views, and human-readable command surfaces.

3) `IL2_AGENT_AND_AUTOMATION_INTERFACE`
- Agent-to-agent contracts, task-spec channels, and automation protocol bindings.

4) `IL3_SYSTEM_AND_TOOLING_INTERFACE`
- Shell/tooling execution interfaces and environment/profile bridging surfaces.

5) `IL4_DATA_AND_ARCHIVE_INTERFACE`
- Evidence, logs, snapshot-state, and archive access interfaces.

## Interface Lifecycle
`CANDIDATE -> DEFINED -> VERIFIED -> ACTIVE -> REFACTORED -> DEPRECATED`

Lifecycle rules:
- `DEFINED` requires interface id + owner + boundary declaration.
- `VERIFIED` requires compatibility and gate checks.
- `ACTIVE` requires SoT sync and ASR registration.
- `REFACTORED` requires compatibility delta note.

## Canonical Interface Classes
- `GOVERNANCE_INTERFACE`
- `OPERATOR_UI_INTERFACE`
- `AGENT_AUTOMATION_INTERFACE`
- `SYSTEM_TOOLING_INTERFACE`
- `DATA_ARCHIVE_INTERFACE`

## Compatibility Modes
- `COMPAT_STRICT`
- `COMPAT_TOLERANT_WITH_GOV_DECISION`
- `COMPAT_BLOCK_ON_BREAKING`

## Interface Gates
- `IGATE_BOUNDARY`: boundary and ownership completeness.
- `IGATE_COMPATIBILITY`: compatibility declaration completeness.
- `IGATE_TRANSITION`: lifecycle transition validity.
- `IGATE_SYNC`: SoT + ASR synchronization completeness.

## Violation Taxonomy
- `IV_BOUNDARY_UNDECLARED`
- `IV_COMPATIBILITY_UNDECLARED`
- `IV_BREAKING_CHANGE_UNGATED`
- `IV_INTERFACE_TRANSITION_CONFLICT`
- `IV_INTERFACE_SYNC_DRIFT`

## Binding
- Canonical interface inventory: `INTERFACE_CATALOG_V2.md`.
- Canonical transition/gate protocol: `INTERFACE_LIFECYCLE_PROTOCOL_V2.md`.
- Canonical cross-module interface map: `MODULE_INTERFACE_MATRIX_V2.md`.
