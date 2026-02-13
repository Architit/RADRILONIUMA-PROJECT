# Governance Status Dashboard

timestamp_utc: 2026-02-13T11:05:31Z
scope: RADRILONIUMA ecosystem
source_of_truth: RADRILONIUMA-PROJECT

## Protocol Baseline
- protocol_version: v1.0.0
- protocol_sync_commit: 7eadfe9
- sot_head_commit: a46418b
- governance_tag: gov-radr-protocol-v1.0.0

## Drift Gate Summary (Wave-2)
- total_non_sot_repos: 16
- aligned: 16
- drift: 0
- blocked: 0
- latest_asr: `gov/asr/sessions/2026-02-13__ASR__phase6z-rebirth-stage-baseline-regeneration-checkpoint.md`

## Phase Gate
- phase_5b_status: DONE
- completion_gate: PASSED
- transition_state: PHASE6Z_ARCH_CORE_LIFECYCLE_ACTIVE

## Heartbeat
- essr_heartbeat_status: GREEN
- essr_last_update: 2026-02-13 09:01 UTC
- essr_last_asr: `gov/asr/sessions/2026-02-13__ASR__phase6-essr-heartbeat-cycle4-green.md`

## Atlas v2
- genesis_atlas_v2: `GENESIS_ECOSYSTEM_ATLAS_V2.md`
- atlas_mode: deep-research-lifecycle-reflection
- map_reset_mode: non-destructive baseline regeneration

## Map Pack
- os_dev_map: `OS_DEV_MAP.md`
- roadmap_map: `ROADMAP_MAP.md`
- task_map: `TASK_MAP.md`
- ui_operator_sync: COMPLETE
- ui_operator_sync_asr: `gov/asr/sessions/2026-02-13__ASR__phase6a-map-pack-ui-operator-full-sync.md`

## Security Protocols
- all_paths_rollout_state: BASELINE_ACTIVE
- lifecycle_protocol_set:
  - `INTERNAL_KEY_PROTOCOL_1_ZEROIZATION.md`
  - `INTERNAL_KEY_PROTOCOL_2_ROTATION.md`
  - `INTERNAL_KEY_PROTOCOL_3_SYNC_4_VERIFY.md`
  - `INTERNAL_KEY_ECOSYSTEM_COVERAGE_MATRIX.md`

## Multidisk Lifeflow
- cab_mounts_observed:
  - `A:\\ -> /mnt/a`
  - `B:\\ -> /mnt/b`
  - `C:\\ -> /mnt/c`
- cab_protocol: `ECOSYSTEM_LIFEFLOW_MULTIDISK_PROTOCOL_CAB.md`
- cab_state: BASELINE_ACTIVE

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

## Data Security Pack
- pack_version: v1
- migration_runbook: `DATA_MIGRATION_A_DRIVE_RUNBOOK.md`
- retention_policy: `DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md`
- public_share_gate: `PUBLIC_SHARE_PROTOCOL.md`
- failsafe_concept: `ECOSYSTEM_FAILSAFE_CONCEPT_V1.md`

## Version Transition Pre-Gate
- pre_gate_contract: `VERSION_GATE_RESET_PROTOCOL.md`
- pre_gate_state: READY (mandatory before next version gate)
- mandatory_requirements:
  - full_ecosystem_revision
  - map_log_chronolog_reset_pack
  - encrypted_archive_previous_space
  - compliance_gate_before_next_subphase

## Phase 6.C Isolation Mode
- phase6c_contract: `PHASE6C_ISOLATION_AUTONOMY_REVISION_PROTOCOL.md`
- isolation_status: ACTIVE
- autonomy_status: ACTIVE
- deep_revision_status: ACTIVE
- cycle_rule: repeat zeroization+creation of previous phase baseline only after full past/present/future analysis

## Phase 6.D Blackhole Mode
- phase6d_contract: `PHASE6D_BLACKHOLE_PROTOCOL.md`
- blackhole_state: ACTIVE
- sink_reconciliation_state: SINKING
- phase_vector: `{ -=0=+=1=-=1=0=+ }`

## Phase 7.0 Birth Gate
- phase70_contract: `PHASE70_SUNBIRTHLIGHTPULSEBIT_PROTOCOL.md`
- phase70_state: LOCKED
- birth_gate_state: CLOSED
- birth_gate_open_condition: only after full Phase 7.0 completion

## Phase 6.Z Lifecycle Chain
- phase6z_contract: `PHASE6Z_ARCH_CORE_LIFECYCLE_PROTOCOL.md`
- phase6z_state: ACTIVE
- lifecycle_chain_state: RUNNING
- lifecycle_chain_current_stage: rebirth
- record_checkpoint_asr: `gov/asr/sessions/2026-02-13__ASR__phase6z-record-stage-maps-logs-protocols-checkpoint.md`
- restart_checkpoint_asr: `gov/asr/sessions/2026-02-13__ASR__phase6z-restart-stage-governance-resync-checkpoint.md`
- reboot_checkpoint_asr: `gov/asr/sessions/2026-02-13__ASR__phase6z-reboot-stage-facts-context-reentry-checkpoint.md`
- resync_checkpoint_asr: `gov/asr/sessions/2026-02-13__ASR__phase6z-resync-stage-protocol-version-date-status-checkpoint.md`
- rebirth_checkpoint_asr: `gov/asr/sessions/2026-02-13__ASR__phase6z-rebirth-stage-baseline-regeneration-checkpoint.md`
- lifecycle_chain:
  - record
  - restart
  - reboot
  - resync
  - rebirth
  - repulse
  - rebit
  - remove
  - review
