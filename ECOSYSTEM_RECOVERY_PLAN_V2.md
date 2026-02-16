# ECOSYSTEM RECOVERY PLAN V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T09:16:10Z
scope: full ecosystem recovery planning
mode: contracts-first, observability-first, derivation-only

## Recovery Objectives
1) Restore protocol alignment after drift/fault events.
2) Recover execution continuity without unsafe shortcuts.
3) Preserve evidence chain and SoT integrity during recovery.

## Recovery Phases
1) `RP1_DETECT`
- detect failure class and impacted modules.

2) `RP2_CONTAIN`
- freeze unsafe transitions and activate block state.

3) `RP3_REMEDIATE`
- apply deterministic fixes and close root causes.

4) `RP4_VERIFY`
- execute gate checks and evidence validation.

5) `RP5_REACTIVATE`
- controlled resume with guarded monitoring.

## Recovery Decision Rule
- each recovery cycle must finish with:
  - `COMPLETE`, or
  - `BLOCKED` with explicit reason and next remediation step.

## Core Recovery KPIs
- time_to_containment_minutes
- time_to_recovery_minutes
- unresolved_blockers_count
- pointer_sync_lag_count
