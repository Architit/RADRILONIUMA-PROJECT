# Governance Status Dashboard

timestamp_utc: 2026-02-13T07:55:58Z
scope: RADRILONIUMA ecosystem
source_of_truth: RADRILONIUMA-PROJECT

## Protocol Baseline
- protocol_version: v1.0.0
- protocol_sync_commit: 7eadfe9
- sot_head_commit: cc41396
- governance_tag: gov-radr-protocol-v1.0.0

## Drift Gate Summary (Wave-2)
- total_non_sot_repos: 16
- aligned: 16
- drift: 0
- blocked: 0
- latest_asr: `gov/asr/sessions/2026-02-13__ASR__core-remediation-phase4-drift-reentry.md`

## Blocked Risk
- repo: `repos/windows-migrated-b-core/CORE`
- status: UNBLOCKED (protocol layer)
- phase: remediation completed through Phase 4 drift re-entry
- evidence: `gov/asr/sessions/2026-02-13__EVIDENCE__core-fsck-phase1.txt`
- plan: `CORE_REMEDIATION_PLAN.md`
- closure_asr: `gov/asr/sessions/2026-02-13__ASR__core-remediation-phase4-drift-reentry.md`

## Operational Notes
- Drift Gate v1 is mandatory and recurring for every protocol-version update and pre-wave sync.
- Non-SoT repos are protocol/date aligned at this snapshot; blocked count is zero for protocol governance layer.
