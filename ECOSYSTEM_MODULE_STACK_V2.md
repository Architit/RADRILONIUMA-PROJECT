# ECOSYSTEM MODULE STACK V2

module_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: RADRILONIUMA ecosystem module architecture
effective_utc: 2026-02-16T06:06:10Z

## Purpose
- Define canonical module boundaries across ecosystem surfaces.
- Standardize module responsibilities, interfaces, dependencies, and lifecycle gates.

## Module Layers
1) `ML0_GOVERNANCE_CORE`
- `RADRILONIUMA-PROJECT` governance surfaces and canonical protocol control.

2) `ML1_ORCHESTRATION_AND_FLOW`
- Orchestration and routing modules for task/message/flow progression.

3) `ML2_SECURITY_AND_CONTROL`
- Identity/key/security modules and guard channels.

4) `ML3_MEMORY_AND_ARCHIVE`
- Archive, memory, restoration, and historical evidence modules.

5) `ML4_RELEASE_AND_MIGRATION`
- Release gate execution, migration, compatibility, and rollout modules.

## Module Lifecycle
`CANDIDATE -> DEFINED -> VERIFIED -> ACTIVE -> REFACTORED -> DEPRECATED`

Lifecycle rules:
- `DEFINED` requires catalog entry + explicit boundary.
- `VERIFIED` requires interface and dependency evidence.
- `ACTIVE` requires SoT sync + ASR.
- `REFACTORED` requires backward compatibility note.

## Module Boundary Rules
- Every module must declare:
  - responsibility,
  - allowed interface surfaces,
  - dependency class,
  - failure mode and recovery path.
- Cross-layer calls must flow through declared interfaces only.
- Undeclared cross-module dependency is a violation.

## Interface Classes
- `FILE_CONTRACT`
- `STATE_POINTER`
- `ASR_EVIDENCE_LINK`
- `GOVERNANCE_GATE`
- `RELEASE_GATE_SIGNAL`

## Dependency Impact Classes
- `MI_LOW`
- `MI_MEDIUM`
- `MI_HIGH`
- `MI_CRITICAL`

## Validation Gates
- `MGATE_BOUNDARY`: module boundary completeness.
- `MGATE_INTERFACE`: interface matrix completeness.
- `MGATE_DEPENDENCY`: dependency map integrity.
- `MGATE_SYNC`: SoT synchronization complete.

## Violation Taxonomy
- `MV_BOUNDARY_MISSING`
- `MV_INTERFACE_UNDECLARED`
- `MV_DEPENDENCY_CONFLICT`
- `MV_SYNC_DRIFT`
- `MV_UNDECLARED_BREAKING_MODULE_CHANGE`

## Binding
- Canonical module topology: `MODULE_CATALOG.md`.
- Canonical interface matrix: `MODULE_INTERFACE_MATRIX_V2.md`.
- Canonical dependency map: `MODULE_DEPENDENCY_MAP_V2.md`.
