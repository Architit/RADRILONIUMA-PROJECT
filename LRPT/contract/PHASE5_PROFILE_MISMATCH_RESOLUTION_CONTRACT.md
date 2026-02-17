# PHASE 5 PROFILE MISMATCH RESOLUTION CONTRACT

timestamp_utc: 2026-02-16T03:39:01Z
scope: resolution policy for codex-cli detected profile mismatch during release-gate unblock wave w4
mode: contracts-first compatibility decision
status: DECIDED

## Facts
- detected_runtime_version: `0.101.0`
- target_profile_note: `5.3 (declared)`
- current_match_state: `MISMATCH`

## Decision
- mismatch_resolution_mode: PROFILE_MISMATCH_TOLERANT_OVERRIDE
- decision_state: COMPLETE_BY_POLICY_OVERRIDE

## Guard Conditions
1) keep policy-only operation (no runtime logic impact).
2) enforce strict write-order synchronization on each wave.
3) classify parser/quoting failures as circulation-style faults, not semantic protocol failures.
4) require fresh ASR evidence on each compatibility scan continuation.

## Compatibility Binding
- source contract: `CODEX_CLI_MESSAGE_CIRCULATION_COMPATIBILITY_CONTRACT.md`
- this decision does not claim profile equality;
  it declares governed tolerance for mismatch under enforced controls.
