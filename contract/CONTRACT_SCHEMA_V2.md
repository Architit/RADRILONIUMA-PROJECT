# CONTRACT SCHEMA V2 (Template)

schema_version: v2.0.0
status: ACTIVE_TEMPLATE
effective_utc: 2026-02-16T05:55:10Z

## Required Header Fields
- `contract_id`
- `version`
- `status`
- `scope`
- `owner_role`
- `effective_utc`
- `dependencies`
- `validation_surface`
- `failure_mode`
- `recovery_path`

## Required Sections
1) Purpose
2) Invariants
3) Decision States
4) Preconditions
5) Execution Path (facts-only)
6) Validation Hooks
7) Evidence Requirements
8) Failure and Recovery
9) Compatibility and Versioning Notes

## Decision State Convention
- `ALLOW`
- `ALLOW_WITH_REVIEW`
- `DENY`
- `BLOCKED_PENDING_DECISION`

## Validation Hook Convention
- deterministic, read-only where possible
- explicit artifact/path references
- explicit success/failure criteria

## Compatibility Markers
- `BREAKING`
- `NON_BREAKING`
- `POLICY_ONLY`

## Notes
- This template is normative for new contracts and deep reworks.
