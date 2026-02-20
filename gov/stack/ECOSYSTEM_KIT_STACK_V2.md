# ECOSYSTEM KIT STACK V2

kit_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: ecosystem kit sets, assembly governance, and lifecycle controls
effective_utc: 2026-02-16T07:24:10Z

## Purpose
- Define canonical architecture for ecosystem kit sets (`/kit` domain).
- Standardize kit composition, ownership, and update lifecycle.
- Prevent ambiguous kit assembly and cross-domain dependency drift.

## Kit Layers
1) `KL0_KIT_TOPOLOGY`
- kit-set topology and domain boundaries.
- artifacts:
  - `ECOSYSTEM_KIT_STACK_V2.md`
  - `ATPLT_DEV_DOMAIN_EXPANSION_ATLAS_CONTRACT.md`

2) `KL1_KIT_INVENTORY`
- canonical kit catalog and ownership surfaces.
- artifacts:
  - `KIT_CATALOG_V2.md`
  - `MODULE_CATALOG.md`

3) `KL2_KIT_ASSEMBLY_CONTROL`
- deterministic assembly/upgrade protocol and gate semantics.
- artifacts:
  - `KIT_ASSEMBLY_PROTOCOL_V2.md`
  - `INTERACTION_PROTOCOL.md`

4) `KL3_KIT_EVIDENCE_AND_STATE`
- execution trace, evidence, and status pointers.
- artifacts:
  - `GOV_STATUS.md`
  - `DEV_LOGS.md`
  - `ROADMAP.md`
  - `gov/asr/INDEX.md`

## Kit Invariants
- No kit-set activation without catalog entry.
- No kit assembly without explicit ownership and dependency declaration.
- No kit upgrade without preflight and rollback pointer.
- No kit closure without SoT pointer synchronization.

## Binding
- Catalog model: `KIT_CATALOG_V2.md`.
- Assembly model: `KIT_ASSEMBLY_PROTOCOL_V2.md`.
