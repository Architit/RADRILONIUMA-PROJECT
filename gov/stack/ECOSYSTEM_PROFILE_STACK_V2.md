# ECOSYSTEM PROFILE STACK V2

profile_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: RADRILONIUMA ecosystem profile architecture
effective_utc: 2026-02-16T08:52:10Z

## Purpose
- Define canonical profile layers for operator/agent/runtime/governance contexts.
- Standardize profile declarations, transitions, and conflict handling.

## Profile Layers
1) `PL0_IDENTITY_PROFILE`
- Identity class, role mapping, and access-level profile surfaces.

2) `PL1_OPERATIONAL_PROFILE`
- Workflow mode, execution context, and task-plane profile declarations.

3) `PL2_RUNTIME_PROFILE`
- Shell/environment/runtime profile bindings and safety attributes.

4) `PL3_INTERFACE_PROFILE`
- Interface compatibility profile and interaction style constraints.

5) `PL4_RECOVERY_PROFILE`
- Recovery posture, retry policy, and deadloop-safe profile behavior.

## Profile Lifecycle
`CANDIDATE -> DEFINED -> VERIFIED -> ACTIVE -> REFACTORED -> DEPRECATED`

Lifecycle rules:
- `DEFINED` requires profile id + owner + boundary declaration.
- `VERIFIED` requires profile gate validation.
- `ACTIVE` requires SoT synchronization + ASR evidence.
- `REFACTORED` requires compatibility delta note.

## Profile Classes
- `IDENTITY_PROFILE`
- `OPERATIONAL_PROFILE`
- `RUNTIME_PROFILE`
- `INTERFACE_PROFILE`
- `RECOVERY_PROFILE`

## Profile Gates
- `PGATE_BOUNDARY`
- `PGATE_COMPATIBILITY`
- `PGATE_TRANSITION`
- `PGATE_SYNC`

## Violation Taxonomy
- `PV_BOUNDARY_UNDECLARED`
- `PV_COMPATIBILITY_MISMATCH`
- `PV_TRANSITION_UNSAFE`
- `PV_UNGATED_BREAKING_PROFILE_CHANGE`
- `PV_PROFILE_SYNC_DRIFT`

## Binding
- Canonical profile inventory: `PROFILE_CATALOG_V2.md`.
- Canonical lifecycle/gate protocol: `PROFILE_LIFECYCLE_PROTOCOL_V2.md`.
- Canonical SoT protocol: `INTERACTION_PROTOCOL.md`.
