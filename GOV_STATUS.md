# Governance Status Dashboard

timestamp_utc: 2026-02-13T08:33:04Z
scope: RADRILONIUMA ecosystem
source_of_truth: RADRILONIUMA-PROJECT

## Protocol Baseline
- protocol_version: v1.0.0
- protocol_sync_commit: 7eadfe9
- sot_head_commit: 4a6dfe2
- governance_tag: gov-radr-protocol-v1.0.0

## Drift Gate Summary (Wave-2)
- total_non_sot_repos: 16
- aligned: 16
- drift: 0
- blocked: 0
- latest_asr: `gov/asr/sessions/2026-02-13__ASR__phase6-interaction-protocol-essr-heartbeat-update.md`

## Phase Gate
- phase_5b_status: DONE
- completion_gate: PASSED
- transition_state: PHASE_SELECTION_GATE_ACTIVE

## Heartbeat
- essr_heartbeat_status: GREEN
- essr_last_update: 2026-02-13 08:33 UTC
- essr_last_asr: `gov/asr/sessions/2026-02-13__ASR__phase6-interaction-protocol-essr-heartbeat-update.md`

## Local Hygiene Snapshot
- tracked_repos: 16
- clean_repos: 16
- repos_with_local_untracked: 0
- predominant_local_artifacts: normalized (policy artifacts tracked; local cache ignores applied in wave scope)

## Blocked Risk
- repo: `repos/windows-migrated-b-core/CORE`
- status: UNBLOCKED (protocol layer)
- phase: remediation completed through Phase 4 drift re-entry
- evidence: `gov/asr/sessions/2026-02-13__EVIDENCE__core-fsck-phase1.txt`
- plan: `CORE_REMEDIATION_PLAN.md`
- closure_asr: `gov/asr/sessions/2026-02-13__ASR__core-remediation-phase4-drift-reentry.md`
- note: legacy migrated source clone remains non-canonical and tracked as risk-note path only.

## Operational Notes
- Drift Gate v1 is mandatory and recurring for every protocol-version update and pre-wave sync.
- Non-SoT repos are protocol/date aligned at this snapshot; blocked count is zero for protocol governance layer.
