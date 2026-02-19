# SUBTREE WAVE1 OPEN REVIEW CONTRACT V1

contract_type: subtree_wave1_open_review
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T04:05:09Z

## Purpose
- Define final review gate before switching wave-1 from HOLD to OPEN.
- Ensure deterministic evidence completeness across all target repositories.

## Open Criteria
- For each target: preflight=PASS, governance_integrity=PASS, rollback_defined=true.
- Target evidence blocks completed using template contract.
- No active Sentinel/A.E.G.I.S. blocking verdict.

## Decision States
- HOLD: criteria incomplete.
- OPEN_RECOMMENDED: all criteria complete, awaiting operator confirmation.
- OPEN: approved and recorded in governance logs.
